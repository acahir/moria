# Top level Makefile
# includes platform specific code and settings in included
# make file. Only tested on Linux and Mac OS X as no way to
# test others

# TODO - add cases for other system types

ifeq ($(shell uname -s), Darwin)
	include unix/Makefile.darwin
else ifeq ($(shell uname -s), Linux)
	include unix/Makefile.linux
else
	BINDIR = /usr/local/bin
	LIBDIR = /usr/local/var/games/moria/
	OWNER = root
	GROUP = games
	PLATFORMDIR = 

	CC := cc
	CFLAGS := -O -I/opt/local/include -I/opt/local/include/ncurses
	LIB := -lcurses -L/opt/local/lib
endif

SRCDIR := src
LIBFILESDIR := files
BUILDDIR := build
TARGET := bin/moria

SRCEXT := c
SOURCES := $(wildcard $(SRCDIR)/*.$(SRCEXT))
PLATFORM_SOURCES += $(wildcard $(PLATFORMDIR)/*.$(SRCEXT))
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o))
OBJECTS += $(patsubst $(PLATFORMDIR)/%,$(BUILDDIR)/%,$(PLATFORM_SOURCES:.$(SRCEXT)=.o))

LIBFILES := $(wildcard $(LIBFILESDIR)/*)


INC := -I include

$(TARGET) : $(OBJECTS)
	@echo "Linking..."
	@echo "  $(CC) $^ -o $(TARGET) $(LIB)"; $(CC) $^ -o $(TARGET) $(LIB)

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
	@mkdir -p $(BUILDDIR)
	@echo "  $(CC) $(CFLAGS) $(INC) -c -o $@ $<"; $(CC) $(CFLAGS) $(INC) -c -o $@ $<

$(BUILDDIR)/%.o: $(PLATFORMDIR)/%.$(SRCEXT)
	@mkdir -p $(BUILDDIR)
	@echo "  $(CC) $(CFLAGS) $(INC) -c -o $@ $<"; $(CC) $(CFLAGS) $(INC) -c -o $@ $<


.PHONY: install
install:
	@echo "Installing..."
	@echo "  mkdir -p $(BINDIR)"; mkdir -p $(BINDIR)
	@echo "  chmod 755 $(BINDIR)"; chmod 755 $(BINDIR)
	@echo "  cp $(TARGET) $(BINDIR)"; cp $(TARGET) $(BINDIR)
	@echo "  chmod 4711 $(BINDIR)/moria"; chmod 4711 $(BINDIR)/moria
	@echo "  mkdir -p $(LIBDIR)"; mkdir -p $(LIBDIR)
	@echo "  chmod 775 $(LIBDIR)"; chmod 775 $(LIBDIR)
	@echo "  cp $(LIBFILES) $(LIBDIR)"; cp $(LIBFILES) $(LIBDIR)
	@echo "  cd $(LIBDIR); chmod 444 *"; (cd $(LIBDIR); chmod 444 *)
	@echo "  cd $(LIBDIR); touch scores; chmod 664 scores"; cd $(LIBDIR); touch scores; chmod 664 scores
	@echo "  chown $(OWNER) $(BINDIR)/moria"; chown $(OWNER) $(BINDIR)/moria
	@echo "  chgrp $(GROUP) $(BINDIR)/moria"; chgrp $(GROUP) $(BINDIR)/moria
	@echo "  cd $(LIBDIR); chown $(OWNER) *"; (cd $(LIBDIR); chown $(OWNER) *)
	@echo "  cd $(LIBDIR); chgrp $(GROUP) *"; (cd $(LIBDIR); chgrp $(GROUP) *)
# If you are short on disk space, or aren't interested in debugging moria.
# strip $(BINDIR)/moria


.PHONY: clean
clean:
	@echo " Cleaning..."; 
	@echo " $(RM) -r $(BUILDDIR) $(TARGET)"; $(RM) -r $(BUILDDIR) $(TARGET)
