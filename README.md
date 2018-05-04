# Feihong's OCaml Quickstart

## Prerequisites

    brew install opam
    opam init   # allow it to modify your ~/.bash_profile
    eval `opam config env`
    opam install core utop

Add this to `~/.ocamlinit`:

    #use "topfind";;
    #thread;;
    #require "core.top";;
    #require "core.syntax";;
    open Core;;

Optionally install these packages:

    opam install async yojson core_extended core_bench cohttp async_graphics cryptokit menhir

Sources: https://dev.realworldocaml.org/install.html

## Command line

Build file using `ocamlbuild`:

    ocamlbuild -pkgs cohttp-lwt-unix client_example.native

Run a program in script mode

    ocaml hello.ml

Launch interpreter

    utop

## Links

- [Base API Documentation](https://ocaml.janestreet.com/ocaml-core/latest/doc/base/Base/index.html)
- [Jbuilder Quickstart](http://jbuilder.readthedocs.io/en/latest/quick-start.html)
