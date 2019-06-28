#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent),
                                          ui(new Ui::MainWindow) {
    this->updateTimer = new QTimer(this);
    connect(this->updateTimer, SIGNAL(timeout()), this, SLOT(updateSpectrumData()));
    ui->setupUi(this);
    this->refreshDevList();
}

MainWindow::~MainWindow() {
    delete ui;
}

double MainWindow::calibrateX(uint32_t x) {
    return x * this->calibrateK + this->calibrateB;
}

void MainWindow::refreshDevList() {
    FT_DEVICE_LIST_INFO_NODE *devInfo =
        (FT_DEVICE_LIST_INFO_NODE *)malloc(sizeof(FT_DEVICE_LIST_INFO_NODE) * 1);
    DWORD numDevs = 0;
    FT_STATUS ftStatus;

    ftStatus = ft_getDeviceInfo(devInfo, numDevs);

    qDebug("ft_init ret: %d\n", ftStatus);
    qDebug("Got %d devs\n", numDevs);

    if(ftStatus == FT_OK) {
        for(int i = 0; i < numDevs; i++) {
            qDebug("Dev %d:\n", i);
            qDebug(" Flags=0x%x\n", devInfo[i].Flags);
            qDebug(" Type=0x%x\n", devInfo[i].Type);
            qDebug(" ID=0x%x\n", devInfo[i].ID);
            qDebug(" LocId=0x%x\n", devInfo[i].LocId);
            qDebug(" SerialNumber=%s\n", devInfo[i].SerialNumber);
            qDebug(" Description=%s\n", devInfo[i].Description);
            qDebug(" ftHandle=0x%x\n", devInfo[i].ftHandle);
        }
    }

    this->ui->deviceListCombo->clear();
    for(int i = 0; i < numDevs; i++) {
        QString devstr = QString("Dev: %1, %2, %3").arg(QString::number(i)).arg(devInfo[i].Description).arg(devInfo[i].SerialNumber);
        this->ui->deviceListCombo->addItem(devstr);
    }

    delete devInfo;
}

void MainWindow::openCloseDevice(bool status) {
    FT_STATUS ftStatus;

    if(status) { // checked: opened
        this->ui->openDevButton->setText("关闭");
        ftStatus = FT_Open(this->ui->deviceListCombo->currentIndex(), &ft_handle);
        if(ftStatus != FT_OK) {
            this->ft_handle = nullptr;
            this->ui->openDevButton->toggle();
        } else {
            FT_SetBaudRate(this->ft_handle, 1152000);
            FT_SetTimeouts(this->ft_handle, 5000, 1000); // Set read timeout of 5sec, write timeout of 1sec
            FT_SetLatencyTimer(this->ft_handle, 2);
        }

    } else {
        this->ui->openDevButton->setText("打开");
        if(this->ft_handle != nullptr) {
            FT_Close(this->ft_handle);
        }
    }
}

void MainWindow::updateSpectrumData() {
    int16_t data[5434];
    double norm_data[5434];

    if(this->ft_handle == nullptr) return;
    if(this->ft_read_lock) {
        qDebug() << "FT device busy";
        return;
    }

    this->ft_read_lock = true;
    FT_Close(this->ft_handle);
    FT_Open(0, &this->ft_handle);
    bool ret = ft_readSpectrumData(this->ft_handle, data);

    if(ret) {
        double max = *std::max_element(data, data + sizeof(data) / sizeof(data[0]));
        double min = *std::min_element(data, data + sizeof(data) / sizeof(data[0]));
        if(max == min) max += 1;

        for(uint32_t i = 0; i < sizeof(data) / sizeof(data[0]); i++) {
            norm_data[i] = (double)data[i] / 2048;
        }

        this->ui->spectrumView->getSeries()->clear();
        for(uint32_t i = 0; i < 5434; i++) {
            this->ui->spectrumView->getSeries()->append(this->calibrateX(i), norm_data[5433 - i]);
        }

        this->ui->spectrumView->getAxisY()->setRange(0, 1.0);

        this->ui->spectrumView->getAxisX()->setRange(
            this->calibrateX(0),
            this->calibrateX(sizeof(data) / sizeof(data[0])));
        this->ui->spectrumView->repaint();
    }
    FT_Close(this->ft_handle);
    FT_Open(0, &this->ft_handle);

    this->ft_read_lock = false;
}

void MainWindow::toggleAutoUpdate(bool status) {
    if(status) { // enable
        this->updateTimer->start(this->ui->refreshRateSpinBox->value() * 1000);
    } else {
        this->updateTimer->stop();
    }
}

void MainWindow::calibPointAChoose() {
    this->calibPoints.first = {this->ui->spectrumView->getCursor(), this->ui->pointAWaveLengthBox->value()};
    this->ui->pointARecordButton->setEnabled(false);
}

void MainWindow::calibPointBChoose() {
    this->calibPoints.second = {this->ui->spectrumView->getCursor(), this->ui->pointBWaveLengthBox->value()};
    this->ui->pointBRecordButton->setEnabled(false);
}

void MainWindow::doCalibrate() {
    this->calibrateK = (this->calibPoints.second.second - this->calibPoints.first.second) / (this->calibPoints.second.first - this->calibPoints.first.first);
    this->calibrateB = this->calibPoints.first.second - this->calibrateK * this->calibPoints.first.first;

    qDebug() << "calib: K:" << this->calibrateK << ", B:" << this->calibrateB;
    this->ui->spectrumView->getSeries()->clear();
}
