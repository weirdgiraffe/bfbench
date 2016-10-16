#!/bin/bash
#
# prepare.sh
# Copyright (C) 2016 weirdgiraffe <giraffe@cyberzoo.xyz>
#
# Distributed under terms of the MIT license.
#

#
# this script will run in a docker-container, so don't run it directly
# use run.sh in to run container which will run benchmark 
#
# to add your repository siply add 
#   setup_yourrepository function 
# which should set up your bf interpreter to run in form
#   interpreter file
# and then at the end
#   COMPETITORS+=" yourrepository"
#

MAINDIR=$(pwd)
CLONE="git clone --depth=1"

setup_fabianishere-brainfuck() {
$CLONE https://github.com/fabianishere/brainfuck.git fabianishere-brainfuck
mkdir -p fabianishere-brainfuck-build
cd fabianishere-brainfuck-build
cmake -DCMAKE_COLOR_MAKEFILE=OFF ../fabianishere-brainfuck
cmake --build . --config Release
cat <<EOF>/bin/fabianishere-brainfuck
#!/bin/bash
$MAINDIR/fabianishere-brainfuck-build/brainfuck < \$@
EOF
chmod +x /bin/fabianishere-brainfuck
}

setup_brandly-bf-go() {
go get github.com/brandly/bf.go
cd $GOPATH/src/github.com/brandly/bf.go && go install
mv $GOPATH/bin/bf.go $GOPATH/bin/brandly-bf-go
cat <<EOF>/bin/brandly-bf-go
#!/bin/bash
$GOPATH/bin/brandly-bf-go \$@
EOF
chmod +x /bin/brandly-bf-go
}

setup_rdebath-brainfuck() {
$CLONE https://github.com/rdebath/Brainfuck.git rdebath-brainfuck
cd rdebath-brainfuck/tritium
make
cat <<EOF>/bin/rdebath-brainfuck
#!/bin/bash
$MAINDIR/rdebath-brainfuck/tritium/bfi -b \$@
EOF
chmod +x /bin/rdebath-brainfuck
}

setup_weirdgiraffe-gobfcli() {
go get github.com/weirdgiraffe/gobfcli
cd $GOPATH/src/github.com/weirdgiraffe/gobfcli && go install
mv $GOPATH/bin/gobfcli $GOPATH/bin/weirdgiraffe-gobfcli
cat <<EOF>/bin/weirdgiraffe-gobfcli
#!/bin/bash
$GOPATH/bin/weirdgiraffe-gobfcli < \$@
EOF
chmod +x /bin/weirdgiraffe-gobfcli
}


COMPETITORS=" fabianishere-brainfuck"
COMPETITORS+=" brandly-bf-go"
COMPETITORS+=" rdebath-brainfuck"
COMPETITORS+=" weirdgiraffe-gobfcli"

mkdir -p /output/
for i in $COMPETITORS; do setup_$i; cd $MAINDIR; done
for i in $COMPETITORS; do $i /contest.bf > /dev/null; bench "$i /contest.bf" --output /output/$i.html; done
