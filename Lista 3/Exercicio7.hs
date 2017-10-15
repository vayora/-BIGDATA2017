--Exercício 07: Implemente uma função collatzLen x que retorna o tamanho da lista formada pela aplicação repetida de collatz sobre o valor x até que essa chegue no número 1.

collatz:: Int->Int
collatz n
    | even n    = n `div` 2     
    | otherwise = 3 * n + 1

collatzSeq:: Int->[Int]
collatzSeq 1 = [1]
collatzSeq n = n:(collatzSeq next)
    where next = collatz n


collatzLen:: Int->Int
collatzLen n = length (collatzSeq n)
    
main=do
 print (collatzLen 5 )
