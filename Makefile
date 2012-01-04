# Copyright 2009 The Go Authors.  All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

include $(GOROOT)/src/Make.inc

TARG=glut

CGOFILES=\
	glut.go\

CGO_OFILES=\
	support.o

ifeq ($(GOOS),darwin)
CGO_LDFLAGS=-framework GLUT
else
CGO_LDFLAGS=-lglut
endif

include $(GOROOT)/src/Make.pkg
