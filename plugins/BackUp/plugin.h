#ifndef BACKUPPLUGIN_H
#define BACKUPPLUGIN_H

#include <QQmlExtensionPlugin>

class BackUpPlugin : public QQmlExtensionPlugin {
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri);
};

#endif
