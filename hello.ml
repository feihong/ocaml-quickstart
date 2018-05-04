open Base
open Core

let get_random_hanzi () =
  let buf = Buffer.create 1 in
  let chr = Random.int_incl 0x4e00 0x9fff |> Uchar.of_int in
  Buffer.add_utf_8_uchar buf chr;
  Buffer.contents buf

let () =
  print_endline "你好世界！";
  Random.self_init();
  printf "Random hanzi: %s\n" get_random_hanzi();
