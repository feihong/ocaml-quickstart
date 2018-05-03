#require "core.top";;
#require "core.syntax";;
open Base
open Core

let () =
    print_endline "你好世界！";
    Random.self_init();
    let ord = Random.int_incl 0x4e00 0x9fff in
    printf "Number: %d\n" ord;
