install_linux() {
  sudo apt-get update -yqq
  sudo apt-get install -qy ${FORTH:-gforth}
}

install_yum() {
  sudo yum install -qy ${FORTH:-gforth}
}

install_osx() {
  brew update > /dev/null
  brew install ${FORTH:-gforth}
}

download_vfxforth() {
  sudo apt-get update -yqq
  sudo apt-get install -qy lib32gcc1 libc6-i386 wget
  wget -q ftp://public@soton.mpeforth.com/VfxLinEval/vfxforth-eval-4.72-0540.i386.tar.gz
  tar xzf vfxforth*.tar.gz
}

$1
