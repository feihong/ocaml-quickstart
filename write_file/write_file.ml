open Base
open Lwt_io

let get_random_hanzi () =
  let buf = Buffer.create 1 in
  let chr = Random.int_incl 0x4e00 0x9fff |> Uchar.of_scalar_exn in
  Caml.Buffer.add_utf_8_uchar buf chr;
  Buffer.contents buf

let () =
  Lwt_main.run begin
    with_file ~mode:Lwt_io.output "output.txt" begin fun channel ->
      let writeln content = write_line channel content in
      let%lwt () = writeln "Do you know these random Chinese characters?" in
      let%lwt () = writeln "Test your knowledge!\n" in
      let%lwt () = begin
        for%lwt _i = 1 to 10 do
          writeln (get_random_hanzi ())
        done
      end in
      let%lwt () = writeln "\nHow many did you get right?" in
      Lwt_io.printf "Wrote to file output.txt\n"
    end
  end
