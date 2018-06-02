#include <QtQml>
#include <QtQml/QQmlContext>

#include "plugin.h"
#include "backup.h"

void BackUpPlugin::registerTypes(const char *uri) {
    //@uri BackUp
    qmlRegisterSingletonType<BackUp>(uri, 1, 0, "BackUp", [](QQmlEngine*, QJSEngine*) -> QObject* { return new BackUp; });
}
