#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

#include "ftdi.h"
#include "utils.h"
#include <utility>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow {
    Q_OBJECT

  public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

  private:
    Ui::MainWindow *ui;
    FT_HANDLE ft_handle;
    bool ft_read_lock = false;

    QTimer *updateTimer;
    std::pair<std::pair<uint32_t, double>, std::pair<uint32_t, double>> calibPoints;
    double calibrateK = 1.0;
    double calibrateB = 0.0;

  public:
    inline double calibrateX(uint32_t x);

  private Q_SLOTS:
    void refreshDevList();
    void openCloseDevice(bool status);
    void updateSpectrumData();
    void toggleAutoUpdate(bool status);
    void calibPointAChoose();
    void calibPointBChoose();
    void doCalibrate();
};

#endif // MAINWINDOW_H
