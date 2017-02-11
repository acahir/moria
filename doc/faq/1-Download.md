## How do I get the Moria sources/executables/documentation? 

The version this faq is part of is maintained at https://github.com/acahir/moria/releases/latest

#### Older versions archives:

A working version of Moria 5.5.2 is now available for the PC; it's also
available at the main Moria archive, but these URLs are more likely to work:

- http://www.geocities.com/SiliconValley/Pines/7376/m552-386.zip
- http://www3.ns.sympatico.ca/dmswaine/m552-386.zip

The main Moria archive has moved to a new home; it makes fiels available by anoymous FTP:

- ftp://ftp.greyhelm.com/pub/Games/Moria

Two near-complete mirrors are available.

- ftp://ftp.funet.fi/pub/unix/games/moria/
- ftp://ftp.aarnet.edu.au/games/roguelike/moria/

Use the pathnames listed below, ignoring the leading /pub/Games/Moria. Some files on the mirrors may be compressed with different compression programs such as gzip.

The documentation, including the official manual and this FAQ, is available at
http://www2.ecst.csuchico.edu/~beej/moria/

The sources for Umoria 5.5.0 were also posted to comp.sources.games, so they should be available (in compressed shar form) on any site which archives comp.sources.games, such as ftp.uu.net.

The following paths give the structure of the Moria archive; they will probably be maintained when the archive moves somewhere else.

/pub/Games/Moria/[machine name]
Executables for the Amiga, Atari ST, IBM PC, and Mac; look at the README files in these directories for more information.  Some of these files may need to be transferred in binary mode; type "binary" before transferring the files.  KSU has both color and monochrome executables for the IBM PC.  European users can also get Mac binaries from jyu.fi, in a file /maclib/game/moria.sit.bin.

/pub/Games/Moria/pc/80386-5.5.2/m552-386.zip
This is the 5.5.2 executable for the PC.

/pub/Games/Moria/source/um5.5.2.tar.Z 
A compressed tar file containing the entire source, for use on any system; if you have tar on your system, this is probably the file that you want.  (If you don't have compress, you can FTP it as well; it is /pub/Games/Moria/compress.tar.)  This file must be transferred in binary mode; type "binary" before getting the file.  Once you have the tar.Z file, type "zcat um5.5.2.tar.Z | tar xf -" to extract the files, and read the README files for help in installing.

/pub/Games/Moria/pc/zip-arc/mor55src.zip
A ZIP file containing the source

/pub/Games/Moria/pc/zip-arc/wmoria10.zip_exec
/pub/Games/Moria/pc/zip-arc/wmoria10.zip_source
Source and Modula-2 executables for Wmoria 1.0, a port of Umoria 5.5.0 to Windows 3.1.

/pub/Games/Moria/patches
Patches for upgrading Moria from one version the the next version, and for modifications.

/pub/Games/Moria/XMoria/xm1.07.tar.Z
The source to Moria for X Windows.

/pub/Games/Moria/doc
The documentation for Moria 5.5, including the official documentation, the FAQ file, and a complete monster list.

/pub/Games/Moria/pc/mono5.5 
The auxilliary files are in this directory; you may need them if you have an executable without them.

/pub/Games/Angband
The source to Angband for UNIX, and source and executable for the PC and Mac.

/pub/Games/Moria/boss
The source distribution, in Pascal, for BOSS.

/pub/Games/Moria/vms
The source discribution, in Pascal, for VMS Moria 4.8 and 5.0.  Umoria 5.x will also work on VMS machines.  (Note that VMS Moria 5.0 is not a version of Umoria 5.x.)

/pub/Games/Moria/unofficial
Other unofficial modifications of Moria, including JAMoria, the druid version for the PC, and the sources for Morgul and Pmoria.

/pub/Games/Moria/utils/calchits.shar.Z
A program for calculating the average damage done with various weapons, allowing you to compare them.

VMS sources for Imoria are available on ubvms.cc.buffalo.edu, in a directory /maslib/games/imoria.  VMS Moria 4.8 and 5.0 sources are also there.

Linux code for Imoria is available from
http://members.xoom.com/kertes/index.htm 
