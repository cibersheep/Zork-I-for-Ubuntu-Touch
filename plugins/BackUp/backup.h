#ifndef BACKUP_H
#define BACKUP_H

#include <QObject>

class BackUp: public QObject {
    Q_OBJECT

public:
    BackUp();
    ~BackUp() = default;

    Q_INVOKABLE void backUpLocalStore(QString lsOld, QString lsNew);
};

#endif
