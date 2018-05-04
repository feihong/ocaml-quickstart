open Base
open Stdio

let get_random_hanzi () =
  let buf = Buffer.create 1 in
  let chr = Random.int_incl 0x4e00 0x9fff |> Uchar.of_scalar_exn in
  Caml.Buffer.add_utf_8_uchar buf chr;
  Buffer.contents buf

let () =
  print_endline "你好世界！";
  Random.self_init();
  print_endline ("Random hanzi: " ^ get_random_hanzi())
