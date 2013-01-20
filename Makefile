#############################################################################
# Makefile for building: Lemurien
# Generated by qmake (2.01a) (Qt 4.8.3) on: Sun Jan 20 18:48:47 2013
# Project:  Lemurien.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile Lemurien.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DQT_WEBKIT_LIB -DQT_PHONON_LIB -DQT_SQL_LIB -DQT_XML_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtXml -I/usr/include/qt4/QtSql -I/usr/include/phonon -I/usr/include/qt4/QtWebKit -I/usr/include/qt4 -I. -I/usr/include/qt4/phonon_compat -I.moc
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -ltag -lQtWebKit -lphonon -lQtSql -lQtXml -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = .obj/

####### Files

SOURCES       = main.cpp \
		databasemanager.cpp \
		sqlmodelfactory.cpp \
		sqlmodel.cpp \
		song.cpp \
		config.cpp \
		playlist.cpp \
		sidebar.cpp \
		mainwindow_ui.cpp \
		mainwindow_behaviors.cpp \
		playlisttablemodel.cpp \
		addfileswindow.cpp \
		exceptions/sqlexception.cpp \
		exceptions/sqldatabaseexception.cpp \
		exceptions/sqldatanotfoundexception.cpp \
		exceptions/sqlinsertfailedexception.cpp \
		exceptions/logicalfaultexception.cpp \
		editsongwindow.cpp \
		webkitwindow.cpp .moc/moc_mainwindow.cpp \
		.moc/moc_sidebar.cpp \
		.moc/moc_playlisttablemodel.cpp \
		.moc/moc_addfileswindow.cpp \
		.moc/moc_editsongwindow.cpp \
		.moc/moc_webkitwindow.cpp \
		qrc_resources.cpp
OBJECTS       = .obj/main.o \
		.obj/databasemanager.o \
		.obj/sqlmodelfactory.o \
		.obj/sqlmodel.o \
		.obj/song.o \
		.obj/config.o \
		.obj/playlist.o \
		.obj/sidebar.o \
		.obj/mainwindow_ui.o \
		.obj/mainwindow_behaviors.o \
		.obj/playlisttablemodel.o \
		.obj/addfileswindow.o \
		.obj/sqlexception.o \
		.obj/sqldatabaseexception.o \
		.obj/sqldatanotfoundexception.o \
		.obj/sqlinsertfailedexception.o \
		.obj/logicalfaultexception.o \
		.obj/editsongwindow.o \
		.obj/webkitwindow.o \
		.obj/moc_mainwindow.o \
		.obj/moc_sidebar.o \
		.obj/moc_playlisttablemodel.o \
		.obj/moc_addfileswindow.o \
		.obj/moc_editsongwindow.o \
		.obj/moc_webkitwindow.o \
		.obj/qrc_resources.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		Lemurien.pro
QMAKE_TARGET  = Lemurien
DESTDIR       = 
TARGET        = Lemurien

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: Lemurien.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtWebKit.prl \
		/usr/lib/x86_64-linux-gnu/libQtSql.prl \
		/usr/lib/x86_64-linux-gnu/libQtXml.prl \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile Lemurien.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_phonon.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/declarative_debug.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtWebKit.prl:
/usr/lib/x86_64-linux-gnu/libQtSql.prl:
/usr/lib/x86_64-linux-gnu/libQtXml.prl:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile Lemurien.pro

dist: 
	@$(CHK_DIR_EXISTS) .obj/Lemurien1.0.0 || $(MKDIR) .obj/Lemurien1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .obj/Lemurien1.0.0/ && $(COPY_FILE) --parents mainwindow.h databasemanager.h factory.h sqlmodel.h sqlmodelfactory.h song.h config.h playlist.h sidebar.h playlisttablemodel.h addfileswindow.h exceptions/sqlexception.h exceptions.h exceptions/sqldatabaseexception.h exceptions/sqldatanotfoundexception.h exceptions/sqlinsertfailedexception.h exceptions/logicalfaultexception.h editsongwindow.h unsavabeplaylist.h webkitwindow.h .obj/Lemurien1.0.0/ && $(COPY_FILE) --parents resources.qrc .obj/Lemurien1.0.0/ && $(COPY_FILE) --parents main.cpp databasemanager.cpp sqlmodelfactory.cpp sqlmodel.cpp song.cpp config.cpp playlist.cpp sidebar.cpp mainwindow_ui.cpp mainwindow_behaviors.cpp playlisttablemodel.cpp addfileswindow.cpp exceptions/sqlexception.cpp exceptions/sqldatabaseexception.cpp exceptions/sqldatanotfoundexception.cpp exceptions/sqlinsertfailedexception.cpp exceptions/logicalfaultexception.cpp editsongwindow.cpp webkitwindow.cpp .obj/Lemurien1.0.0/ && (cd `dirname .obj/Lemurien1.0.0` && $(TAR) Lemurien1.0.0.tar Lemurien1.0.0 && $(COMPRESS) Lemurien1.0.0.tar) && $(MOVE) `dirname .obj/Lemurien1.0.0`/Lemurien1.0.0.tar.gz . && $(DEL_FILE) -r .obj/Lemurien1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: .moc/moc_mainwindow.cpp .moc/moc_sidebar.cpp .moc/moc_playlisttablemodel.cpp .moc/moc_addfileswindow.cpp .moc/moc_editsongwindow.cpp .moc/moc_webkitwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) .moc/moc_mainwindow.cpp .moc/moc_sidebar.cpp .moc/moc_playlisttablemodel.cpp .moc/moc_addfileswindow.cpp .moc/moc_editsongwindow.cpp .moc/moc_webkitwindow.cpp
.moc/moc_mainwindow.cpp: sidebar.h \
		config.h \
		sqlmodelfactory.h \
		factory.h \
		databasemanager.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		playlist.h \
		song.h \
		sqlmodel.h \
		unsavabeplaylist.h \
		playlisttablemodel.h \
		addfileswindow.h \
		editsongwindow.h \
		webkitwindow.h \
		mainwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mainwindow.h -o .moc/moc_mainwindow.cpp

.moc/moc_sidebar.cpp: sidebar.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) sidebar.h -o .moc/moc_sidebar.cpp

.moc/moc_playlisttablemodel.cpp: playlist.h \
		song.h \
		sqlmodel.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		config.h \
		playlisttablemodel.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) playlisttablemodel.h -o .moc/moc_playlisttablemodel.cpp

.moc/moc_addfileswindow.cpp: sqlmodelfactory.h \
		factory.h \
		databasemanager.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		playlist.h \
		song.h \
		sqlmodel.h \
		config.h \
		unsavabeplaylist.h \
		addfileswindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) addfileswindow.h -o .moc/moc_addfileswindow.cpp

.moc/moc_editsongwindow.cpp: song.h \
		sqlmodel.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		config.h \
		editsongwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) editsongwindow.h -o .moc/moc_editsongwindow.cpp

.moc/moc_webkitwindow.cpp: webkitwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) webkitwindow.h -o .moc/moc_webkitwindow.cpp

compiler_rcc_make_all: qrc_resources.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_resources.cpp
qrc_resources.cpp: resources.qrc \
		data/lemurien.svg
	/usr/bin/rcc -name resources resources.qrc -o qrc_resources.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean 

####### Compile

.obj/main.o: main.cpp mainwindow.h \
		sidebar.h \
		config.h \
		sqlmodelfactory.h \
		factory.h \
		databasemanager.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		playlist.h \
		song.h \
		sqlmodel.h \
		unsavabeplaylist.h \
		playlisttablemodel.h \
		addfileswindow.h \
		editsongwindow.h \
		webkitwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/main.o main.cpp

.obj/databasemanager.o: databasemanager.cpp databasemanager.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/databasemanager.o databasemanager.cpp

.obj/sqlmodelfactory.o: sqlmodelfactory.cpp sqlmodelfactory.h \
		factory.h \
		databasemanager.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		playlist.h \
		song.h \
		sqlmodel.h \
		config.h \
		unsavabeplaylist.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/sqlmodelfactory.o sqlmodelfactory.cpp

.obj/sqlmodel.o: sqlmodel.cpp sqlmodel.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/sqlmodel.o sqlmodel.cpp

.obj/song.o: song.cpp song.h \
		sqlmodel.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		config.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/song.o song.cpp

.obj/config.o: config.cpp config.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/config.o config.cpp

.obj/playlist.o: playlist.cpp playlist.h \
		song.h \
		sqlmodel.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		config.h \
		sqlmodelfactory.h \
		factory.h \
		databasemanager.h \
		unsavabeplaylist.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/playlist.o playlist.cpp

.obj/sidebar.o: sidebar.cpp sidebar.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/sidebar.o sidebar.cpp

.obj/mainwindow_ui.o: mainwindow_ui.cpp mainwindow.h \
		sidebar.h \
		config.h \
		sqlmodelfactory.h \
		factory.h \
		databasemanager.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		playlist.h \
		song.h \
		sqlmodel.h \
		unsavabeplaylist.h \
		playlisttablemodel.h \
		addfileswindow.h \
		editsongwindow.h \
		webkitwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/mainwindow_ui.o mainwindow_ui.cpp

.obj/mainwindow_behaviors.o: mainwindow_behaviors.cpp mainwindow.h \
		sidebar.h \
		config.h \
		sqlmodelfactory.h \
		factory.h \
		databasemanager.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		playlist.h \
		song.h \
		sqlmodel.h \
		unsavabeplaylist.h \
		playlisttablemodel.h \
		addfileswindow.h \
		editsongwindow.h \
		webkitwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/mainwindow_behaviors.o mainwindow_behaviors.cpp

.obj/playlisttablemodel.o: playlisttablemodel.cpp playlisttablemodel.h \
		playlist.h \
		song.h \
		sqlmodel.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		config.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/playlisttablemodel.o playlisttablemodel.cpp

.obj/addfileswindow.o: addfileswindow.cpp addfileswindow.h \
		sqlmodelfactory.h \
		factory.h \
		databasemanager.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		playlist.h \
		song.h \
		sqlmodel.h \
		config.h \
		unsavabeplaylist.h \
		mainwindow.h \
		sidebar.h \
		playlisttablemodel.h \
		editsongwindow.h \
		webkitwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/addfileswindow.o addfileswindow.cpp

.obj/sqlexception.o: exceptions/sqlexception.cpp exceptions/sqlexception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/sqlexception.o exceptions/sqlexception.cpp

.obj/sqldatabaseexception.o: exceptions/sqldatabaseexception.cpp exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/sqldatabaseexception.o exceptions/sqldatabaseexception.cpp

.obj/sqldatanotfoundexception.o: exceptions/sqldatanotfoundexception.cpp exceptions/sqldatanotfoundexception.h \
		exceptions/sqlexception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/sqldatanotfoundexception.o exceptions/sqldatanotfoundexception.cpp

.obj/sqlinsertfailedexception.o: exceptions/sqlinsertfailedexception.cpp exceptions/sqlinsertfailedexception.h \
		exceptions/sqlexception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/sqlinsertfailedexception.o exceptions/sqlinsertfailedexception.cpp

.obj/logicalfaultexception.o: exceptions/logicalfaultexception.cpp exceptions/logicalfaultexception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/logicalfaultexception.o exceptions/logicalfaultexception.cpp

.obj/editsongwindow.o: editsongwindow.cpp editsongwindow.h \
		song.h \
		sqlmodel.h \
		exceptions.h \
		exceptions/sqldatabaseexception.h \
		exceptions/sqlexception.h \
		exceptions/sqldatanotfoundexception.h \
		exceptions/sqlinsertfailedexception.h \
		exceptions/logicalfaultexception.h \
		config.h \
		mainwindow.h \
		sidebar.h \
		sqlmodelfactory.h \
		factory.h \
		databasemanager.h \
		playlist.h \
		unsavabeplaylist.h \
		playlisttablemodel.h \
		addfileswindow.h \
		webkitwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/editsongwindow.o editsongwindow.cpp

.obj/webkitwindow.o: webkitwindow.cpp webkitwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/webkitwindow.o webkitwindow.cpp

.obj/moc_mainwindow.o: .moc/moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_mainwindow.o .moc/moc_mainwindow.cpp

.obj/moc_sidebar.o: .moc/moc_sidebar.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_sidebar.o .moc/moc_sidebar.cpp

.obj/moc_playlisttablemodel.o: .moc/moc_playlisttablemodel.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_playlisttablemodel.o .moc/moc_playlisttablemodel.cpp

.obj/moc_addfileswindow.o: .moc/moc_addfileswindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_addfileswindow.o .moc/moc_addfileswindow.cpp

.obj/moc_editsongwindow.o: .moc/moc_editsongwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_editsongwindow.o .moc/moc_editsongwindow.cpp

.obj/moc_webkitwindow.o: .moc/moc_webkitwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_webkitwindow.o .moc/moc_webkitwindow.cpp

.obj/qrc_resources.o: qrc_resources.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/qrc_resources.o qrc_resources.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

