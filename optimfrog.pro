include($$PWD/../../plugins.pri)

TARGET = $$PLUGINS_PREFIX/Input/optimfrog

HEADERS += decoderoptimfrogfactory.h \
           decoder_optimfrog.h \
           optimfrogmetadatamodel.h \
           optimfroghelper.h

SOURCES += decoderoptimfrogfactory.cpp \
           decoder_optimfrog.cpp \
           optimfrogmetadatamodel.cpp \
           optimfroghelper.cpp

unix {
    target.path = $$PLUGIN_DIR/Input
    INSTALLS += target
    PKGCONFIG += OptimFROG
    QMAKE_CLEAN = $$PLUGINS_PREFIX/Input/liboptimfrog.so
}
