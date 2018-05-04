(*
https://github.com/mirage/ocaml-cohttp
*)
open Lwt
open Cohttp
open Cohttp_lwt_unix
open Ppx_lwt

let body =
  Client.get (Uri.of_string "http://ipecho.net/plain") >>= fun (resp, body) ->
  let code = resp |> Response.status |> Code.code_of_status in
  Printf.printf "Response code: %d\n" code;
  Printf.printf "Headers: %s\n" (resp |> Response.headers |> Header.to_string);
  body |> Cohttp_lwt.Body.to_string >|= fun body ->
  Printf.printf "Body of length: %d\n" (String.length body);
  body

let () =
  let body = Lwt_main.run body in
  print_endline ("Received body\n" ^ body)