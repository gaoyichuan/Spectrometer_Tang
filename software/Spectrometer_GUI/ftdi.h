#ifndef FTDI_H
#define FTDI_H

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include <ftd2xx.h>

FT_STATUS ft_getDeviceInfo(FT_DEVICE_LIST_INFO_NODE *devInfo, DWORD &numDevs);
FT_STATUS ft_close(FT_HANDLE dev);

bool ft_readSpectrumData(FT_HANDLE ftHandle, int16_t *data);

#endif // FTDI_H
