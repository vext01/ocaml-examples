open Printf;;
open Scanf;;
open Pervasives;;

let print_banner v = printf "This is rpoc-%s\n%!" v;;

let parse_line line =
    let i = ref 0 in
    begin
        try
            i := int_of_string line;
            printf "%d\n%!" !i
        with Failure _ -> (());
    end
;;

let prompt () = while true
    do (
        parse_line (input_line stdin)
    ) done
;;

(* ------------------------------ *)

let version = "0.1";;
print_banner version;;

try ( prompt ()) with End_of_file -> ();;

(* bscanf Scanning.stdin "%d" (fun x -> x);; *)
