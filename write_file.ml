open Lwt_io

let get_random_hanzi () =
  let buf = Buffer.create 1 in
  let chr = Base.Random.int_incl 0x4e00 0x9fff |> Uchar.of_int in
  Buffer.add_utf_8_uchar buf chr;
  buf |> Buffer.contents

let () =
  Lwt_main.run begin
    with_file ~mode:Lwt_io.output "output.txt" begin fun channel ->
      let writeln content = write_line channel content in
      writeln "Do you know these random Chinese characters?";%lwt
      writeln "Test your knowledge!\n";%lwt
      for%lwt _i = 1 to 10 do
        writeln (get_random_hanzi ())
      done;%lwt
      writeln "\nHow many did you get right?";%lwt
      Lwt_io.printf "Wrote to file output.txt\n"
    end
  end
