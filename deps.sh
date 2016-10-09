# Install build and test dependencies.

# This script takes two arguments:
#
# First, the operating system used by the continuous integration
# service.  The script does some system-dependent preparations before
# installing a Forth.
#
# Second, the Forth implementation to install.

prepare_linux() {
  sudo apt-get update -yqq
  install=install_apt
  libs32="libc6-i386"
}

prepare_yum() {
  install=install_yum
}

prepare_centos() {
  install=install_rpm
}

prepare_osx() {
  brew update > /dev/null
  install=install_brew
}

prepare_gforth() {
  true
}

prepare_gforth_centos() {
  sudo yum install libtool-ltdl-devel
  forth='http://download.opensuse.org/repositories/home:/forthy/CentOS_CentOS-6/x86_64/gforth-0.7.9_20131227-63.1.x86_64.rpm'
}

prepare_pforth() {
  true
}

prepare_vfxforth() {
  $install $libs32 wget
  install=install_download
  forth='ftp://public@soton.mpeforth.com/VfxLinEval/vfxforth-eval-4.72-0560.i386.tar.gz'
}

prepare_spforth() {
  $install $libs32 wget
  install=install_download
  forth='http://downloads.sourceforge.net/spf/spf-4.20.tar.gz'
}

prepare_lina() {
  $install wget
  install=install_download
  forth='http://home.hccnet.nl/a.w.m.van.der.horst/lina64-5.3.0.tar.gz'
}

install_apt() {
  sudo apt-get install -qy "$@"
}

install_rpm() {
  wget -q "$1"
  sudo rpm -i --force *.rpm
}

install_yum() {
  sudo yum install "$@"
}

install_brew() {
  brew install "$@"
}

install_download() {
  wget -q "$1" -O- | tar xzf -
}

maybe() {
  "$1" 2> /dev/null || true
}

forth="$2"
prepare_$1
prepare_$2
maybe prepare_$2_$1
$install "$forth"
