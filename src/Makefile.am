## Process this file with automake to produce Makefile.in

bin_PROGRAMS = crypticfs

noinst_HEADERS = debug.h permchain.h userinfo.h misc.h usermap.h
bindfs_SOURCES = crypticfs.c debug.c permchain.c userinfo.c misc.c usermap.c

AM_CPPFLAGS = ${my_CPPFLAGS} ${fuse_CFLAGS} ${openssl_CFLAGS}
AM_CFLAGS = ${my_CFLAGS}
bindfs_LDADD = $(fuse_LIBS) ${openssl_LIBS} ${my_LDFLAGS} ${openssl_LDFLAGS}

man_MANS = crypticfs.1
