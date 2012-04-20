(* define a list *)

let l = [1; 1; 1;];;

(* append to list *)
let l = l @ [4; 6; 8;];;

(* using  map to apply a function to all elements *)
let even_num x = if (x mod 2 <> 0) then false else true;;

let even = List.map even_num l;;

let rec print_list ls = match ls with
        h :: t -> (Printf.printf "%B\n" h; print_list t)
        | [] -> ();;

print_list even;;

(* folding a list *)
let res = List.fold_left (+) 0 l;;
Printf.printf "folded addition = %d\n" res;;
