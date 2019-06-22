#ifndef LOGFORMAT_H
#define LOGFORMAT_H

#include <QtCore>
#include <QMap>

class QSqlRecord;

class LogFormat : public QObject {
    Q_OBJECT

public:
    enum Type {
        ADI,
        ADX,
        CABRILLO,
        JSON
    };

    LogFormat(QTextStream& stream);

    virtual ~LogFormat();

    static LogFormat* open(QString type, QTextStream& stream);
    static LogFormat* open(Type type, QTextStream& stream);

    void runImport();
    int runExport();
    void setDefaults(QMap<QString, QString>& defaults);
    void setDateRange(QDate start, QDate end);

signals:
    void progress(qint64 value);
    void finished(int count);

protected:
    virtual void importStart() {}
    virtual void importEnd() {}
    virtual bool importNext(QSqlRecord&) { return false; }

    virtual void exportStart() {}
    virtual void exportEnd() {}
    virtual void exportContact(QSqlRecord&) {}

    QTextStream& stream;
    QMap<QString, QString>* defaults;

private:
    bool dateRangeSet();
    bool inDateRange(QString date);
    bool inDateRange(QDate date);
    QDate startDate, endDate;
};

#endif // LOGFORMAT_H