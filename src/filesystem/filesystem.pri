include($$PWD/private/private.pri)

INCLUDEPATH += $$PWD/../base

INSTALL_PREFIX=$$QT_INSTALL_PREFIX
isEmpty(INSTALL_PREFIX): INSTALL_PREFIX=$$[QT_INSTALL_PREFIX]
DEFINES += PREFIX=\\\"$$INSTALL_PREFIX\\\"

HEADERS += \
    $$PWD/dbasefilewatcher.h \
    $$PWD/dcapmanager.h \
    $$PWD/dfilesystemwatcher.h \
    $$PWD/dfilewatcher.h \
    $$PWD/dfilewatchermanager.h \
    $$PWD/dpathbuf.h \
    $$PWD/dstandardpaths.h \
    $$PWD/dtrashmanager.h \
    $$PWD/dcapfile.h \

SOURCES += \
    $$PWD/dbasefilewatcher.cpp \
    $$PWD/dcapmanager.cpp \
    $$PWD/dfilewatcher.cpp \
    $$PWD/dfilewatchermanager.cpp \
    $$PWD/dstandardpaths.cpp \
    $$PWD/dpathbuf.cpp \
    $$PWD/dcapfsfileengine.cpp \
    $$PWD/dcapfile.cpp \

linux {
    SOURCES += \
        $$PWD/dfilesystemwatcher_linux.cpp \
        $$PWD/dtrashmanager_linux.cpp
} else:win* {
    SOURCES += \
        $$PWD/dfilesystemwatcher_win.cpp \
        $$PWD/dtrashmanager_dummy.cpp
} else {
    SOURCES += \
        $$PWD/dfilesystemwatcher_dummy.cpp \
        $$PWD/dtrashmanager_dummy.cpp
}

includes.files += $$PWD/*.h
includes.files += \
    $$PWD/DFileWatcher \
    $$PWD/DBaseFileWatcher \
    $$PWD/DCapManager \
    $$PWD/DCapFile \
    $$PWD/DCapDir \
    $$PWD/DFileSystemWatcher \
    $$PWD/DFileWatcherManager \
    $$PWD/DPathBuf \
    $$PWD/DStandardPaths \
    $$PWD/DTrashManager \
