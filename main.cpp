#include <QGuiApplication>
#include <QQmlApplicationEngine>
//#include <qrc_resources.h">



int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    //Q_INIT_RESOURCE(resources);
    QQmlApplicationEngine engine;

    //const QUrl url(QStringLiteral("qrc:/myidss/Main.qml"));
    const QUrl url(u"qrc:/myidss/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
