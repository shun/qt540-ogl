TEMPLATE = app

QT += qml quick widgets core

SOURCES += \
	src/main.cpp \
    src/openglelement.cpp

RESOURCES += qml/qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    inc/openglelement.h

INCLUDEPATH += inc
