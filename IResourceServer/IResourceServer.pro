QT += core network gui widgets

TEMPLATE = lib
DEFINES += IRESOURCESERVER_LIBRARY

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    config.cpp \
    resourcecontroller.cpp \
    resourceserver.cpp \
    serverworker.cpp

HEADERS += \
    IResourceServer_global.h \
    config.h \
    iresourceserver.h \
    resourcecontroller.h \
    resourceserver.h \
    serverworker.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

DISTFILES +=





