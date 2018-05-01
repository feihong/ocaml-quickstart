# Feihong's OCaml Quickstart

## Prerequisites

    brew install opam
    opam switch list
    opam switch 4.06.1  # or whatever the latest version is

Add to ~/.bash_profile:

    . ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

Sources: [How to install opam](http://opam.ocaml.org/doc/Install.html), [OCaml for the Impatient](https://adambard.com/blog/getting-started-with-ocaml/)

## Run program

    ocaml hello.ml
