(* define a tree like so *)
type 'a tree = Leaf of 'a | Node of 'a tree * 'a * 'a tree;;

(* A leaf is constructed like this *)
let l = Leaf 1;;

(* Nodes like this *)
let n = Node (Leaf 1,  3, Leaf 2);;

(* Now we have what we need to make a tree *)
let t = Node(Node(Leaf 1, 66, Node(Leaf 5, 10, Leaf 6)), 99, Node(Leaf 2,  44,
        Node(Leaf 3, -1, Leaf 4)));;

(* Recursively print tree depth first *)
open Printf;;
let rec print_tree t = match t with 
        Leaf l -> (printf "%d\n" l)
        | Node (i, j, k) -> (print_tree (Leaf j); print_tree i; print_tree k);;
print_tree t;;

(* or pretty *)
print_string "---\n";;
let print_node s depth =
         printf "%d:%s\n" depth ((String.make depth ' ') ^ (string_of_int s));;
let rec print_tree t depth = match t with 
        Leaf l -> print_node l depth
        | Node (i, j, k) -> (print_node j depth; print_tree i (depth+1); print_tree k (depth+1));;
print_tree t 0;;
