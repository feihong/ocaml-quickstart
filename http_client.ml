(*
https://github.com/mirage/ocaml-cohttp
*)
open Cohttp
open Cohttp_lwt_unix

let content =
  let%lwt resp, body = Client.get (Uri.of_string "http://ipecho.net/plain") in
  let code = resp |> Response.status |> Code.code_of_status in
  Printf.printf "Response code: %d\n" code;
  Printf.printf "Headers: \n%s\n" (resp |> Response.headers |> Header.to_string);
  let%lwt content = Cohttp_lwt.Body.to_string body in
  Printf.printf "Body of length: %d\n" (String.length content);
  Lwt.return content

let () =
  let content = Lwt_main.run content in
  print_endline ("Received content:\n" ^ content)
