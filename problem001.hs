-- Vincent Siu
-- projectEuler
-- Problem 1

calculate = sum' generate

sum' l = if (null l)
            then 0
            else (head l) + sum (tail l)

generate = [ x | x <- [1,2..999], condition x]

condition x = let helper n =
                    (mod x n == 0) in
                        (helper 3 || helper 5)
