#include "ftdi.h"
#include <QDebug>

FT_STATUS ft_getDeviceInfo(FT_DEVICE_LIST_INFO_NODE *devInfo, DWORD &numDevs) {
    FT_STATUS ftStatus;
    //    FT_DEVICE_LIST_INFO_NODE *devInfo;
    //    DWORD numDevs;
    // create the device information list
    ftStatus = FT_CreateDeviceInfoList(&numDevs);
    if(ftStatus == FT_OK) {
        qDebug("Number of devices is %d\n", numDevs);
    } else {
        return ftStatus;
    }

    if(numDevs > 0) {
        // allocate storage for list based on numDevs
        //        devInfo =
        //            (FT_DEVICE_LIST_INFO_NODE *)malloc(sizeof(FT_DEVICE_LIST_INFO_NODE) * numDevs);
        // get the device information list
        devInfo = (FT_DEVICE_LIST_INFO_NODE *)realloc(devInfo, sizeof(FT_DEVICE_LIST_INFO_NODE) * numDevs);
        ftStatus = FT_GetDeviceInfoList(devInfo, &numDevs);

        return ftStatus;
    } else {
        return FT_DEVICE_NOT_FOUND;
    }
}

bool ft_readSpectrumData(FT_HANDLE ftHandle, int16_t *data) {
    unsigned char rxbyte, rxdata[16384];
    uint32_t bytesReceived, retries = 0;
    int16_t i16data;

    bool readValid = false;

    do {
        retries++;

        // wait header
        do {
            FT_Read(ftHandle, &rxbyte, 1, &bytesReceived);
            //            qDebug("wait rxbyte: 0x%02x", rxbyte);
        } while(rxbyte != 0xF5);

        // verify header
        FT_Read(ftHandle, &rxbyte, 1, &bytesReceived);
        //        qDebug("rxbyte: 0x%02x\n", rxbyte);
        if(rxbyte != 0xAA) continue;

        // read data until buffer full / timeout
        FT_Read(ftHandle, rxdata, sizeof(rxdata) / sizeof(rxdata[0]), &bytesReceived);
        if(bytesReceived < 10870) continue; // not enough

        //        qDebug("Received %d bytes", bytesReceived);
        //        for(uint32_t i = 10800; i < 10900; i++) {
        //            qDebug("byte %d: 0x%02x", i, rxdata[i]);
        //        }

        // find end
        if((rxdata[10868] == 0xF5) && (rxdata[10869] == 0xAA)) {
            readValid = true;
            for(uint32_t i = 0; i < 5434; i++) {
                // merge int16
                i16data = rxdata[i * 2] * 256 + rxdata[i * 2 + 1] - 0x0800;
                if((rxdata[i * 2] & 0xF0) != 0) {
                    i16data = (i = 0) ? 0 : data[i - 1];
                }

                data[i] = i16data;
            }
        } else {
            continue;
        }
    } while((!readValid) && (retries < 128));

    if(!readValid) {
        qDebug() << "Spectrum read failed!";
    }

    return readValid;
}
