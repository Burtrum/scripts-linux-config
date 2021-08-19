## 50_install-kicad.sh
## 2020-10-04-A WIP
## http://www.kicad-pcb.org/download/linux-mint/
## run as root, sudo

echo "START: 50_install-kicad.sh"

add-apt-repository --yes ppa:kicad/kicad-5.1-releases
apt update
apt install --install-recommends kicad

# apt install kicad-demos

echo "END: 50_install-kicad.sh"

#	The following additional packages will be installed:
#	  kicad-demos
#	  kicad-doc-en
#	  kicad-footprints
#	  kicad-libraries
#	  kicad-packages3d
#	  kicad-symbols
#	  kicad-templates
#	  libfreeimage3
#	  libgl2ps1.4
#	  libglew2.1
#	  libjxr0
#	  libngspice0
#	  liboce-foundation11 liboce-modeling11 liboce-ocaf-lite11 liboce-ocaf11 liboce-visualization11
#	  libraw19 libwxbase3.0-0v5 libwxgtk3.0-gtk3-0v5 python3-wxgtk4.0 xsltproc
#	Suggested packages:
#	  extra-xdg-menus
#	  kicad-locale-ko | kicad-locale-ru | kicad-locale-pl | kicad-locale-pt | kicad-locale-ja | kicad-locale-id | kicad-locale-ca | kicad-locale-it
#	  | kicad-locale-el | kicad-locale-zh | kicad-locale-de | kicad-locale-sl | kicad-locale-cs | kicad-locale-bg | kicad-locale-sv | kicad-locale-lt | kicad-locale-fi
#	  | kicad-locale-fr | kicad-locale-hu | kicad-locale-nl | kicad-locale-es | kicad-locale-sk kicad-libraries glew-utils wx3.0-doc
#	The following NEW packages will be installed:
#	  kicad kicad-demos kicad-doc-en kicad-footprints kicad-libraries kicad-packages3d kicad-symbols kicad-templates libfreeimage3 libgl2ps1.4 libglew2.1 libjxr0 libngspice0
#	  liboce-foundation11 liboce-modeling11 liboce-ocaf-lite11 liboce-ocaf11 liboce-visualization11 libraw19 libwxbase3.0-0v5 libwxgtk3.0-gtk3-0v5 python3-wxgtk4.0 xsltproc
#	0 upgraded, 23 newly installed, 0 to remove and 0 not upgraded.
#	Need to get 461 MB of archives.
#	After this operation, 5,956 MB of additional disk space will be used.
