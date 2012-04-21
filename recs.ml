(* define record *)
type person = {fname : string; lname : string};;
let jim = {fname="jim"; lname="bob"};;

let print_person x = print_string (x.fname ^ " " ^ x.lname ^ "\n");;

print_person jim;;

(* DO NOT REUSE FIELD NAMES IN THE SAME MODULE - THIS SUCKS *)
