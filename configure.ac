AC_INIT([VHD Library and Tools],
        [1.0.0],
        [comstud@gmail.com],
        [vhd],
        [http://github.com/comstud/vhd])
AC_CONFIG_SRCDIR([lib/libvhd.c])
AC_CONFIG_AUX_DIR(config)
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
AC_PROG_CC
AM_PROG_CC_C_O
# Automake 1.12 requires AM_PROG_AR, but older versions don't know it.
m4_ifdef([AM_PROG_AR], [AM_PROG_AR])
AC_PROG_LIBTOOL
AC_CONFIG_MACRO_DIR([m4])

AC_CHECK_HEADERS([uuid/uuid.h], [], [
echo ""
echo "Missing uuid/uuid.h.  Please install uuid-dev."
echo ""
exit 1
])

AC_CHECK_LIB(uuid, uuid_generate)

LIBVHD_VERSION_MAJOR=1
LIBVHD_VERSION_MINOR=0
LIBVHD_VERSION_SUBMINOR=0

AC_SUBST(LIBVHD_VERSION_MAJOR)
AC_SUBST(LIBVHD_VERSION_MINOR)
AC_SUBST(LIBVHD_VERSION_SUBMINOR)

AC_CONFIG_FILES(Makefile)
AC_OUTPUT

echo ""
echo "Configuration summary for $PACKAGE_NAME $PACKAGE_VERSION:"
echo "  * Installation prefix: $prefix"
echo "  * System type:         $host_vendor-$host_os"
echo "  * Host CPU:            $host_cpu"
echo "  * C++ Compiler:        $CXX_VERSION"
echo "  * Assertions enabled:  $ac_cv_assert"
echo "  * Debug enabled:       $with_debug"
echo "  * Profiling enabled:   $ac_profiling"
echo "  * Coverage enabled:    $ac_coverage"
echo "  * Warnings as errors:  $ac_cv_warnings_as_errors"
echo ""
