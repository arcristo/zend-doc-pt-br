#!/usr/bin/env bash

git clone git@github.com:arcristo/zend-tutorials-pt-br.git
cd zend-tutorials-pt-br
git submodule update --init --recursive
zend-doc-theme-pt-br/bin/build.sh -t "Tutoriais do Zend Framework"
mkdocs build
cp -r doc/html ../doc/html/tutoriais
