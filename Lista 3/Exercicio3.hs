--Exercício 03: Crie a lista de números de Fibonacci utilizando uma função geradora.
fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main=do
 print (fibs !! 10)
