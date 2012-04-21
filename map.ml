(*
 * Make a module which defines a Map whose key is a string,
 * the right hand size (values) remain polymorphic
 *)

module StringMap = Map.Make(String);;

(* Instantiate our new map type *)
let map = StringMap.empty;;

(* Add some stuff *)
let map = StringMap.add "Key1" 1 map;;
let map = StringMap.add "Key2" 2 map;;
let map = StringMap.add "Key3" 3 map;;

(* This is how we would print our map *)
let printMap m =
  StringMap.iter (fun key value -> Printf.printf "%s -> %d\n" key value) m;;

printMap map;;

(* no Integer module so an int map needs magic *)
module IntMap = Map.Make(struct type t = int let compare = compare end);;
