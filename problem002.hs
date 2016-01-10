-- Vincent Siu
-- projectEuler
-- Problem 002

generateFibonacci i = helper_Fibonacci' [1,1] i 
                        
helper_Fibonacci :: [Int]->Int->[Int]
helper_Fibonacci (a:b:l) n = if n == 0
                                then l
                                else helper_Fibonacci ((a+b):a:b:l) (n-1)

helper_Fibonacci' :: [Int]->Int->[Int]
helper_Fibonacci' (a:b:l) n = if (a + b) > n
                                then a:b:l
                                else helper_Fibonacci' ((a+b):a:b:l) n

list = [x | x <- generateFibonacci 4000000, even x]

calculate = sum list
