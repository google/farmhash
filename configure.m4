m4_if(cwm4_submodule_dirname, [], [m4_append_uniq([CW_SUBMODULE_SUBDIRS], cwm4_submodule_basename, [ ])])
m4_append_uniq([CW_SUBMODULE_CONFIG_FILES], cwm4_quote(cwm4_submodule_path[/Makefile]), [ ])
m4_append_uniq([CW_SUBMODULE_CONFIG_FILES], cwm4_quote(cwm4_submodule_path[/src/Makefile]), [ ])

# Required tests.
CW_HAVE_BUILTIN_EXPECT
CW_HAVE_BUILTIN_BSWAP
AC_C_BIGENDIAN

# Lets not compile the unittest.
AM_CONDITIONAL([FARMHASH_UNITTEST], [false])
