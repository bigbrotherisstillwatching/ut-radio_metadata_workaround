#include <QCoreApplication>
#include <QGuiApplication>
#include <QQuickView>
#include <QString>
#include <QUrl>
#include <QtQml>
#include "mytype.h"

int main(int argc, char* argv[])
{
    QGuiApplication* app = new QGuiApplication(argc, (char**) argv);
    app->setApplicationName("radio.s710");

    qmlRegisterType<Launcher>("Launcher", 1, 0, "Launcher");

    QQuickView* view = new QQuickView();
    view->setSource(QUrl("qrc:/Main.qml"));
    view->setResizeMode(QQuickView::SizeRootObjectToView);
    view->show();

    return app->exec();
}
