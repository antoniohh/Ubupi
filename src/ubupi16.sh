#!/bin/sh

# Versión 16 del script Ubupi para Ubuntu 16.04.1 LTS.
# Añadidos nuevos repositorios y programas.

# Activar o desactivar las funciones deseadas.

# Antes de lanzar el script activar el repositorio Socios de Canonical e instalar los controladores privativos.

# Script creado por Antonio Horrillo.

# Repositorio Java de Oracle.
sudo add-apt-repository ppa:webupd8team/java

# Repositorio Sublime Text 3.
sudo add-apt-repository ppa:webupd8team/sublime-text-3

# Repositorio Brackets.
sudo add-apt-repository ppa:webupd8team/brackets

# Repositorio Atom.
sudo add-apt-repository ppa:webupd8team/atom

# Repositorio Handbrake.
sudo add-apt-repository ppa:stebbins/handbrake-snapshots

# Repositorio Numix para Ubuntu. Temas de escritorio e iconos.
sudo add-apt-repository ppa:numix/ppa

# Repositorio Variety.
sudo add-apt-repository ppa:peterlevi/ppa

# Repositorio Simple Screen Recorder.
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder

# Repositorio Google Chrome.
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Repositorio Oracle VirtualBox 5.1.2.
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" >> /etc/apt/sources.list.d/virtualbox.list'

# Repositorio Spotify.
sudo echo deb http://repository.spotify.com testing non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# Repositorio Dropbox
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ xenial main" >> /etc/apt/sources.list.d/dropbox.list'

# Actualizamos el sistema.
sudo apt-get update
sudo apt-get upgrade

# Eliminar OpenJDK y Paquetes Relacionados.
sudo apt-get -y remove --purge openjdk-* icedtea-*

# Instalar OpenJDK y Paquetes Relacionados.
# sudo apt-get install icedtea-7-plugin openjdk-7-jre
# sudo apt-get install openjdk-7-jdk

# sudo update-alternatives --config java

# Instalando Java 8 de Oracle.
sudo apt-get -y install oracle-java8-installer
sudo update-java-alternatives -s java-8-oracle
sudo apt-get -y install oracle-java8-set-default

# Maquina Virtual Oracle VirtualBox.
sudo apt-get -y install virtualbox-5.1
sudo apt-get -y install dkms

# Cliente Dropbox
sudo apt-get -y install dropbox

# Cliente Spotify.
sudo apt-get -y install spotify-client

# Google Chrome.
sudo apt-get -y install google-chrome-stable

# Editor de video Handbrake.
sudo apt-get -y install handbrake-gtk

# Temas de escritorio e iconos Numix.
sudo apt-get -y install numix-gtk-theme
sudo apt-get -y install numix-icon-theme-circle

# Simple Screen Recorder.
sudo apt-get -y install simplescreenrecorder

# if you want to record 32-bit OpenGL applications on a 64-bit system:
sudo apt-get -y install simplescreenrecorder-lib:i386

# Instalamos Aptitude.
sudo apt-get -y install aptitude

# Instalamos Gdebi.
sudo apt-get -y install gdebi

# Herramienta gráfica para la gestión de paquetes.
sudo apt-get -y install synaptic

# Instalar Ubuntu Restricted Extras. Flash player Plugin, Codecs multimedia y Fonts de microsoft.
sudo apt-get -y install ubuntu-restricted-extras

# Cpufreq Indicator
sudo apt-get -y install indicator-cpufreq

# Editor del menu de inicio.
sudo apt-get -y install alacarte

# Personalizar Gnome.
# sudo apt-get -y install gnome-tweak-tool

# Personalizar Unity.
sudo apt-get -y install unity-tweak-tool

# Instalar VLC.
sudo apt-get -y install vlc vlc-plugin-pulse

# Archivos comprimidos.
sudo apt-get -y install rar unrar unace zip unzip p7zip-full p7zip-rar sharutils mpack lha arj cabextract file-roller uudeview

# Editor de Imágenes Gimp con plugins.
sudo apt-get -y install gimp
sudo apt-get -y install gimp-plugin-registry gimp-resynthesizer gimp-ufraw
sudo apt-get -y install gimp-gmic

# Variety is a wallpaper changer that automatically downloads and changes your wallpaper.
sudo apt-get -y install variety

# Cliente plataforma Steam.
sudo apt-get -y install steam

# FTP Filezilla.
sudo apt-get -y install filezilla

# Editor de código Bluefish.
sudo apt-get -y install bluefish

# Editor de código Geany.
sudo apt-get -y install geany

# Editor de Diagramas.
sudo apt-get -y install dia

# XML Copy Editor.
sudo apt-get -y install xmlcopyeditor

# Sublime Text 3.
sudo apt-get -y install sublime-text-installer

# Brackets.
sudo apt-get -y install brackets

# Atom.
sudo apt-get -y install atom

# Plataforma AMP.
sudo apt-get -y install mysql-server mysql-client
sudo apt-get -y install apache2 apache2-doc apache2-utils
sudo apt-get -y install php7.0 libapache2-mod-php7.0
sudo apt-get -y install php-pear
sudo apt-get -y install php7.0-mysql
sudo apt-get -y install php7.0-sqlite php7.0-gd
sudo apt-get -y install php-apcu
sudo apt-get -y install phpmyadmin
sudo /etc/init.d/apache2 restart
sudo /etc/init.d/mysql restart

# Limpieza.
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove
