
## Installation

Installing moria requires development tools and the ncurses library and header files. This version of Moria is maintained in git, which provides an easy way to download the source.

#### Mac OS X

Before being able to build moria, you will need to download Apple's development tools, Xcode. It can be downloaded for free through the App Store. Once installed, use of the terminal will be required.

To install ncurses, the easiest way to install the prereqs is using [MacPorts](https://www.macports.org) or [Homebrew](http://brew.sh). For example, after downloading and installing MacPorts, run the following 

```bash
port install ncurses
```

Download the latest release of [moria](https://github.com/acahir/moria/releases/latest). Once expanded, open the terminal and navigate to the downloaded folder. Run the following to build and install moria:

```bash
make
sudo make install
```

See the Customizing the Install section if you do not want to use sudo to install.


#### Linux

Development tools should be installed by default on most linux systems. The easiest way to get any other prereqs is to use the package manager for your  system.

For example to install ncurses and git on Debien:

```bash
apt-get install git
apt-get install libncurses5
apt-get install libncurses5-dev

```

To build moria, simply run 'make' from the root directory of the project. There is no need to move or symlink platform specific code into the src directory or edit the config.h file (hopefully).

  make
  make install
  
Installing usually requires root privs, so can be completed with sudo. Otherwise the install locations/owners can be changed to not require root privs.


#### Customizing the Install

If you are not using Mac OS X or Linux, moria probably won't build without some effort. This section covers how to customize the install locations or the build process.

##### Unsupported Platforms

moria was ported to many different platforms, and may still compile for them with some minor effort. If the build fails, look for a folder for your specific system, such as _vms_, _ibmpc_, etc. 

Move any code files (ending in .c or .h) to the src directory, and try building again:

```bash
make clean
make
```

##### Changing Install Locations

The build options and install locations can be customized by editing the following files:

- include/config.h
- Makefile

Note that the paths in config.h must match the install location defined in Makefile.




#### Old Directions

First, you have to put every file in the 'source' directory, and every file
in your machine/OS specific directory into a common directory.  If you are on
a UNIX machine and running csh, the following works nicely if typed from this
directory; note that unix/Makefile is built for Debian, so you need the
original UNIX Makefile to make on other Unix systems.

```bash
foreach i (source/* unix/*)
ln -s $i $i:t
rm Makefile
ln -s unix/Makefile.unix Makefile
end
```

(If you wish to build the program in a temporary directory, the same command
will work, but you will have to give full pathnames for the source and
unix directories.  If you build the program in a different filesystem than
the one containing the sources, then 'ln -s' will only work if you have
BSD or SYSVR4.    If the 'ln -s' fails, you can use 'ln' or 'cp' instead.)

To compile the program, edit the config.h file and Makefile to change the
names of the files the game uses.  Also, uncomment the appropriate
line for the system you are compiling on. Type make (or build
or whatever) to compile the game.  You may want to edit the 'files/hours' file
to indicate during what hours people are allowed to play the game.  (The
micro versions don't use this file.)

The game needs to be installed setuid on UNIX systems for the scoreboard
to work.  Use the command 'chmod 4511 moria' to do this.
The file scores should be mode 644 with the same owner as moria.
The files hours and news must be publicly readable with mode 444.
(Or just type 'make install' after setting BINDIR and LIBDIR in the
Makefile to appropriate values.)

There are two choices for the key bindings, the original style and
a rogue-like style.  You can choose which one is to be the default
by changing the value of ROGUE_LIKE in config.h.

Moria only has partial support for SYS III.  It probably won't
compile and run under this system without a bit of work.

If your compiler has a seven character identifier limit, the shortnam.sed
file should solve the problem nicely.
