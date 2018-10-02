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

## Initializing project

Create quickstart.opam

Create local switch

    opam switch create . 4.06.0 --deps-only

Install packages in local switch

    opam install --deps-only -y .


## Building & running

Launch interpreter

    utop

Build

    dune build

Clean `_build` directory

    dune clean

## Links

- [Introduction to opam for npm/yarn users](https://khady.info/opam-npm.html)
- [Starting an OCaml app project using Dune](https://medium.com/@bobbypriambodo/starting-an-ocaml-app-project-using-dune-d4f74e291de8)
- [Dune docs](https://dune.readthedocs.io/en/latest/)
- [Base API Documentation](https://ocaml.janestreet.com/ocaml-core/latest/doc/base/Base/index.html)
