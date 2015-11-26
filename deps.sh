install_linux() {
  sudo apt-get update -yqq
  sudo apt-get install -qy ${FORTH:-gforth}
}

install_yum() {
   wget http://download.opensuse.org/repositories/home:/forthy/CentOS_CentOS-6/x86_64/gforth-0.7.9_20131227-63.1.x86_64.rpm
   sudo yum install libtool-ltdl-devel
   sudo rpm -i --force gforth*.rpm
}

install_osx() {
  brew update > /dev/null
  brew install ${FORTH:-gforth}
}

download_spforth() {
  sudo apt-get update -yqq
  sudo apt-get install -qy lib32gcc1 libc6-i386 wget
  wget -q http://downloads.sourceforge.net/spf/spf-4.20.tar.gz
  tar xzf spf*.tar.gz
}

download_lina() {
  wget http://home.hccnet.nl/a.w.m.van.der.horst/lina64-5.2.1.tar.gz
  tar xzf lina64*.tar.gz
}

download_vfxforth() {
  sudo apt-get update -yqq
  sudo apt-get install -qy lib32gcc1 libc6-i386 wget
  wget -q ftp://public@soton.mpeforth.com/VfxLinEval/vfxforth-eval-4.72-0540.i386.tar.gz
  tar xzf vfxforth*.tar.gz
}

$1
