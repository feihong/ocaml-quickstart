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

## Building & running

Launch interpreter

    utop

Build program using jbuilder:

    jbuilder build hello/hello.exe

Run program using jbuilder (automatically builds as well):

    jbuilder exec hello/hello.exe

## Links

- [Base API Documentation](https://ocaml.janestreet.com/ocaml-core/latest/doc/base/Base/index.html)
- [Jbuilder Quickstart](http://jbuilder.readthedocs.io/en/latest/quick-start.html)
