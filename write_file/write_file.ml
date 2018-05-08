(* open Core *)


Lwt_main.run begin
  Lwt_io.with_file ~mode:Lwt_io.output "output.txt" begin fun channel ->
    let%lwt () = Lwt_io.write channel "Hello there" in
    let%lwt () = Lwt_io.write channel ", what nice weather we have today!" in
    Lwt_io.printf "Wrote to file output.txt\n"
  end
end
