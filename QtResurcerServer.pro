QT += core network gui widgets

TARGET = QtResurcerServer
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += debug_and_release

HEADERS += \
    ServerWindow.h

SOURCES += \
    ServerMain.cpp \
    ServerWindow.cpp

FORMS += \
    ServerWindow.ui


RESOURCES += \
    resource.qrc



win32:CONFIG(release, debug|release): LIBS += -L$$PWD/build-IResourceServer-Qt_6_4_1_for_macOS-Release/release/ -lIResourceServer.1.0.0
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/build-IResourceServer-Qt_6_4_1_for_macOS-Release/debug/ -lIResourceServer.1.0.0
else:unix: LIBS += -L$$PWD/build-IResourceServer-Qt_6_4_1_for_macOS-Release/ -lIResourceServer.1.0.0

INCLUDEPATH += $$PWD/build-IResourceServer-Qt_6_4_1_for_macOS-Release
DEPENDPATH += $$PWD/build-IResourceServer-Qt_6_4_1_for_macOS-Release
