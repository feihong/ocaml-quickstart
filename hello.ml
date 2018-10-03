open Printf

let print_random_hanzi () =
  let buf = Buffer.create 1 in
  let chr = Base.Random.int_incl 0x4e00 0x9fff |> Uchar.of_int in
  Buffer.add_utf_8_uchar buf chr;
  let len = buf |> Buffer.length in
  printf "Random hanzi: %s (%d bytes)\n" (buf |> Buffer.contents) len

let () =
  let () = Base.Random.self_init() in
  print_endline "你好世界！";
  for _ = 1 to 5 do
    print_random_hanzi ()
  done
