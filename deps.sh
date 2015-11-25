install_linux() {
  sudo apt-get update -yqq
  sudo apt-get install -y ${FORTH:-gforth}
}

install_yum() {
  sudo yum install -y ${FORTH:-gforth}
}

install_osx() {
  brew update > /dev/null
  brew install ${FORTH:-gforth}
}

$1
