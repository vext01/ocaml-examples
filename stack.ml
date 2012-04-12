let st:string Stack.t = Stack.create();;

Stack.push "1" st;;
Stack.push "2" st;;
Stack.push "3" st;;

for i=1 to 3 do print_string (Stack.pop st ^ "\n") done;;
