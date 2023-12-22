"big" ^ "red";;
let x : int = if 3 > 2 then 42 else 3110 in x * 2;;

(* scope *)
let v = 5 in ((let v = 6 in v) + v);;

(* functions *)
(fun x -> x + 1) 3110;;
let avg x y = (x +. y) /. 2.;;
avg 3110. (42. +. 0.6);;

(* recursive functions *)
let rec fact n =
  if n = 0 then 1
  else n * fact (n-1);;

fact 8;;

(* polymorphic functions *)
let id x = x;;
id "hello";;
id 8;;
id 2.3;;

(* operators as functions *)
(+);;
(+) 1 2;;
(<)
let ( <^> ) x y = (x *. y) /. 2.;;
5. <^> 7.;;

(* application operators *)
succ 2 * 10;;
succ (2 * 10);;
succ @@ 2 * 10;;

let square x = x * x;;
square (succ 5);;
(* square succ 5;; *)
square @@ succ 5;;
5 |> succ |> square |> succ 
