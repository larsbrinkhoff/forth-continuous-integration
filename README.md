## Continuous Integration for Forth

This is a template for running Forth in cloud-based hosted continuous integration services.

These services are supported:  
[![Travis CI](https://img.shields.io/travis/larsbrinkhoff/forth-continuous-integration.svg?label=TravisCI)](https://travis-ci.org/larsbrinkhoff/forth-continuous-integration)
[![Circle CI](https://img.shields.io/circleci/project/larsbrinkhoff/forth-continuous-integration.svg?label=CircleCI)](https://circleci.com/gh/larsbrinkhoff/forth-continuous-integration)
[![Wercker](https://img.shields.io/wercker/ci/larsbrinkhoff/forth-continuous-integration.svg?label=Wercker)](https://app.wercker.com/#applications/565611d38faa27fb0d13fe64)
[![Shippable](https://img.shields.io/shippable/5656a5321895ca4474245e90.svg?label=Shippable)](https://app.shippable.com/projects/5656a5321895ca4474245e90)
[![Snap CI](https://img.shields.io/snap-ci/larsbrinkhoff/forth-continuous-integration/master.svg?label=SnapCI)](https://snap-ci.com/larsbrinkhoff/forth-continuous-integration)
[![Bitrise](https://www.bitrise.io/app/f60bdf36bd956896.svg?token=_RL3uOO0yD9gEebW-Tqr0g)](https://www.bitrise.io/app/f60bdf36bd956896)

These Forth implementations are supported:  
[![Gforth](https://img.shields.io/travis/larsbrinkhoff/forth-continuous-integration.svg?label=Gforth)](https://travis-ci.org/larsbrinkhoff/forth-continuous-integration)
[![pForth](https://img.shields.io/circleci/project/larsbrinkhoff/forth-continuous-integration.svg?label=pForth)](https://circleci.com/gh/larsbrinkhoff/forth-continuous-integration)
[![VFX Forth](https://img.shields.io/wercker/ci/larsbrinkhoff/forth-continuous-integration.svg?label=VFX Forth)](https://app.wercker.com/#applications/565611d38faa27fb0d13fe64)
[![SP-Forth](https://img.shields.io/shippable/5656a5321895ca4474245e90.svg?label=SP-Forth)](https://app.shippable.com/projects/5656a5321895ca4474245e90)
[![lina](https://img.shields.io/snap-ci/larsbrinkhoff/forth-continuous-integration/master.svg?label=lina)](https://snap-ci.com/larsbrinkhoff/forth-continuous-integration)

## How to Use

Fork this repository here on GitHub, and create a login on one or more
of the services.  Once logged in, you will be able add your repository
and create a build configuration for it.  This repository already
includes sample configuration files for all supported services.

The sample configuration will install a Forth implementation and check
that the file `test.fth` runs successfully.  Installation is done by
the `deps.sh` script, which is called from the configuration file.  To
select the Forth implementation to use, change the second argument to
the script.

Adding support for a new Forth is easy, but there must be a way to
automatically download, install, and run it from a script.

## VFX Forth Note

**Commercial use of evaluation or Lite compilers is not permitted. If
you sell an application written with VFX Forth, that is commercial
use. If you are paid to write software with VFX Forth, that is
commercial use. If you are a teacher and want to use VFX Forth in a
class, that is commercial use, so contact us and we will give you
written permission.**
