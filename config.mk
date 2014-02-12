# dmenu version
VERSION = 4.5-tip

# paths
PREFIX = /home/$(USER)
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/include/X11
X11LIB = /usr/lib/X11

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# includes and libs
INCS = -I${X11INC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS}

# flags
CPPFLAGS = -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
CFLAGS   = -ansi -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = -s ${LIBS}

# compiler and linker
CC = cc
