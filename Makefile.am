
ACLOCAL_AMFLAGS = -I m4
LDADD = libvhd.la
AM_CFLAGS = -Iinclude -D_GNU_SOURCE

bin_PROGRAMS =
check_PROGRAMS =
noinst_PROGRAMS =
lib_LTLIBRARIES =
noinst_LTLIBRARIES =
nobase_include_HEADERS =
include_HEADERS =
noinst_HEADERS =
CLEANFILES =
EXTRA_DIST = autogen.sh \
	include/atomicio.h \
	include/libvhd-journal.h \
	include/list.h \
	include/lvm-util.h \
	include/relative-path.h \
	include/vhd.h \
	include/vhd-util.h \
	include/vhd-uuid.h


include_HEADERS += include/libvhd.h include/vhd-uuid.h include/vhd.h

# libvhd
LIBVHD_VERS=@LIBVHD_VERSION_MAJOR@:@LIBVHD_VERSION_MINOR@:@LIBVHD_VERSION_SUBMINOR@
VHD_VERS=@LIBVHD_VERSION_MAJOR@.@LIBVHD_VERSION_MINOR@.@LIBVHD_VERSION_SUBMINOR@
lib_LTLIBRARIES += libvhd.la
libvhd_la_SOURCES = lib/libvhd.c \
	lib/vhd-util-uuid.c \
	lib/relative-path.c
libvhd_la_LDFLAGS = -version-info ${LIBVHD_VERS}

# vhd-update
bin_PROGRAMS += vhd-update
vhd_update_SOURCES = tools/vhd-update/vhd-update.c \
	tools/common/atomicio.c \
	tools/common/libvhd-journal.c

# vhd-util
bin_PROGRAMS += vhd-util
vhd_util_SOURCES = tools/vhd-util/vhd-util.c \
	tools/vhd-util/vhd-util-check.c \
	tools/vhd-util/vhd-util-fill.c \
	tools/vhd-util/vhd-util-read.c \
	tools/vhd-util/vhd-util-revert.c \
	tools/vhd-util/vhd-util-snapshot.c \
	tools/vhd-util/vhd-util-coalesce.c  \
	tools/vhd-util/vhd-util-modify.c \
	tools/vhd-util/vhd-util-repair.c \
	tools/vhd-util/vhd-util-scan.c \
	tools/vhd-util/vhd-util-create.c \
	tools/vhd-util/vhd-util-query.c \
	tools/vhd-util/vhd-util-resize.c \
	tools/vhd-util/vhd-util-set-field.c \
	tools/vhd-util/lvm-util.c \
	tools/common/atomicio.c \
	tools/common/libvhd-journal.c

distclean-local:
	rm -rf configure Makefile.in aclocal.m4 autom4te.cache config m4 vhd-${VHD_VERS} vhd-${VHD_VERS}.tar.gz
