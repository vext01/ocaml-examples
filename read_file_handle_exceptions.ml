(* Printing /etc/hosts to stdout *)

open Printf;;

let print_file name = let instream = open_in name in 
        try (
                while true do (printf "%s\n" (input_line instream)) done
        ) with End_of_file -> (close_in instream; ());;

print_file "/etc/hosts";;

(*
 * Note that (Std.input_list chan) readsa file in to a list and may be better
 * in some cases
 *)
