PROJECT_NAME = new-project

all:
	echo "Clean, build and install"
	clean
	build
	install

clean:
	cabal clean

build:
	cabal build

check:
	cabal test

install:
	cabal install
