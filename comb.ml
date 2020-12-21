let fact n = if n < 2
    then 1
    else let rec fact (i, r) = if i = n
        then r
        else fact (i + 1, (i + 1) * r)
    in fact (2, 2);;

let rec comb (m, n) =
    if n = 0 || m = n then 1
    else comb (m-1, n-1) + comb (m-1, n);;
(* optimización de comb gracias al uso de la Regla de Pascal *)