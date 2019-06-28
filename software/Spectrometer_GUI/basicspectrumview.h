#ifndef BASICSPECTRUMVIEW_H
#define BASICSPECTRUMVIEW_H

#include <QtCharts>

QT_CHARTS_USE_NAMESPACE

typedef std::vector<QPointF> PointsVector;

class BasicSpectrumView : public QChartView {
    Q_OBJECT

  public:
    BasicSpectrumView(QWidget *parent = nullptr);

    void scaleY(qreal factor);

    QPointF pointToSeriesData(QPoint point);
    QPointF pointToSeriesData(QPointF point);
    qreal channelToPointX(uint64_t chn);

    QValueAxis *getAxisX() const;
    QValueAxis *getAxisY() const;
    QLineSeries *getSeries() const;
    void setSeries(QLineSeries *value);
    QChart *getChart() const;

    uint64_t getCursor() const;
    void setCursor(const uint64_t &value);

    QPointF getMax() const;
    void setMax(const QPointF &value);

    uint64_t getSum() const;
    void setSum(const uint64_t &value);

  private Q_SLOTS:
    void wheelEvent(QWheelEvent *event) Q_DECL_OVERRIDE;
    void mousePressEvent(QMouseEvent *event) Q_DECL_OVERRIDE;

  protected:
    void paintEvent(QPaintEvent *event) Q_DECL_OVERRIDE;

  private:
    QValueAxis *axisX = new QValueAxis();
    QValueAxis *axisY = new QValueAxis();
    QLineSeries *series = new QLineSeries();
    QChart *chart = new QChart();

    // max and min values
    QPointF max;
    uint64_t sum = 0;

    // cursor
    uint64_t cursor = 0;
};

#endif // SPECTRUMVIEW_H
