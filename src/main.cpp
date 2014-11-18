#include <QApplication>
#include <QtQml>
#include <QQmlApplicationEngine>
#include "openglelement.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    qmlRegisterType<OpenGLElement>("KSElements", 1,0, "OpenGLElement");
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
