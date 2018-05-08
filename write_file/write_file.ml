(* open Core *)

Lwt_main.run begin
  Lwt_io.with_file ~mode:Lwt_io.output "output.txt" begin fun channel ->
    Lwt_io.write channel "Hello there"
  end
end
