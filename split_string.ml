open String
open List
open Printf

let rec split str ch =
    let pos = try Some (index str ch) with Not_found -> None in
    match pos with
    | None -> [str]
    | Some pos' -> let remain_len = (String.length str) - pos' - 1 in
        let remain_str = String.sub str (pos' + 1) remain_len in
        let elem = String.sub str 0 pos' in
        [ elem ] @ split remain_str ch;;

let rec print_list l = match l with
    | [] -> ()
    | _ -> printf "'%s'\n" (List.hd l); print_list (List.tl l);;

let subs = split "1,2,3,44" ',' in
    print_list subs;;
