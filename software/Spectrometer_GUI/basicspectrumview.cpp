#include "basicspectrumview.h"
#include <QMainWindow>
#include <iostream>

QT_CHARTS_USE_NAMESPACE

BasicSpectrumView::BasicSpectrumView(QWidget *parent) : QChartView(new QChart(), parent) {
    this->setChart(this->chart);
    this->chart->legend()->hide();
    this->chart->addSeries(this->series);
    this->chart->addAxis(this->axisX, Qt::AlignBottom);
    this->chart->addAxis(this->axisY, Qt::AlignLeft);

    // TODO: chart theme

    this->series->attachAxis(this->axisX);
    this->series->attachAxis(this->axisY);
    this->series->setUseOpenGL();

    this->setRenderHint(QPainter::Antialiasing);

    this->repaint();
}

void BasicSpectrumView::scaleY(qreal factor) {
    this->axisY->setMax(std::ceil(this->axisY->max() * factor));
}

void BasicSpectrumView::wheelEvent(QWheelEvent *event) {
    qreal factor = event->angleDelta().y() > 0 ? 0.8 : 1.2;
    this->scaleY(factor);
    event->accept();
    QChartView::wheelEvent(event);
}

void BasicSpectrumView::mousePressEvent(QMouseEvent *event) {
    if(event->button() == Qt::LeftButton) {
        auto data = this->pointToSeriesData(event->pos());
        this->setCursor(data.x());
    }
    event->accept();
}

QPointF BasicSpectrumView::pointToSeriesData(QPoint point) {
    auto scenePos = mapToScene(QPoint(static_cast<int>(point.x()), static_cast<int>(point.y())));
    auto chartItemPos = this->chart->mapFromScene(scenePos);
    auto valueGivenSeries = this->chart->mapToValue(chartItemPos);

    if(valueGivenSeries.x() < this->axisX->min()) valueGivenSeries.setX(this->axisX->min());
    if(valueGivenSeries.x() > this->axisX->max()) valueGivenSeries.setX(this->axisX->max());

    return valueGivenSeries;
}

QPointF BasicSpectrumView::pointToSeriesData(QPointF point) {
    auto scenePos = mapToScene(QPoint(static_cast<int>(point.x()), static_cast<int>(point.y())));
    auto chartItemPos = this->chart->mapFromScene(scenePos);
    auto valueGivenSeries = this->chart->mapToValue(chartItemPos);

    if(valueGivenSeries.x() < this->axisX->min()) valueGivenSeries.setX(this->axisX->min());
    if(valueGivenSeries.x() > this->axisX->max()) valueGivenSeries.setX(this->axisX->max());

    return valueGivenSeries;
}

qreal BasicSpectrumView::channelToPointX(uint64_t chn) {
    if(this->series->count() == 0) return 0;

    qreal chn_width = this->chart->plotArea().width() / this->series->count();
    return this->chart->plotArea().left() + chn_width * chn;
}

void BasicSpectrumView::paintEvent(QPaintEvent *event) {
    QChartView::paintEvent(event);

    if(this->series->count() > 0) {
        qreal curX = this->channelToPointX(this->cursor);
        QPainter painter(this->viewport());
        painter.setRenderHint(QPainter::Antialiasing);
        painter.setPen(QColor(0, 0, 0));
        painter.setBrush(painter.pen().color());
        painter.drawLine(curX, this->chart->plotArea().bottom(), curX, this->chart->plotArea().top());
    }

    event->accept();
}

void BasicSpectrumView::setSeries(QLineSeries *value) {
    series = value;
}

uint64_t BasicSpectrumView::getSum() const {
    return sum;
}

void BasicSpectrumView::setSum(const uint64_t &value) {
    sum = value;
}

QChart *BasicSpectrumView::getChart() const {
    return chart;
}

QLineSeries *BasicSpectrumView::getSeries() const {
    return series;
}

QValueAxis *BasicSpectrumView::getAxisY() const {
    return axisY;
}

QValueAxis *BasicSpectrumView::getAxisX() const {
    return axisX;
}

QPointF BasicSpectrumView::getMax() const {
    return max;
}

void BasicSpectrumView::setMax(const QPointF &value) {
    max = value;
}
uint64_t BasicSpectrumView::getCursor() const {
    return cursor;
}

void BasicSpectrumView::setCursor(const uint64_t &value) {
    cursor = value;
    this->repaint();
}
