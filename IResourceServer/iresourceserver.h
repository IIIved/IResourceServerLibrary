#ifndef IRESOURCESERVER_H
#define IRESOURCESERVER_H

#include "IResourceServer_global.h"

#include <QTcpServer>

class ServerWorker;
class QThread;

class IRESOURCESERVER_EXPORT IResourceServer : public QTcpServer
{
public:
    explicit IResourceServer(QObject *parent = nullptr)
        : QTcpServer(parent) {}

    virtual qint32 port() const = 0;

    virtual void clearResources() = 0;
protected:
    virtual void incomingConnection(qintptr socketDescriptor) = 0;

private:
    virtual void authorization(ServerWorker *sender, const QJsonObject &doc) = 0;
    virtual bool tryProcessResourceStatus(ServerWorker *sender, const QJsonObject &doc) = 0;
};

#endif // IRESOURCESERVER_H
