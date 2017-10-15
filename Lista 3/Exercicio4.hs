{-|
Module      : Lista 3 - Exercícios sobre Listas
Description : Listas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 04: Utilizando a lista anterior, calcule a soma dos números de Fibonacci pares dos valores que não excedem 4.000.000. (Project Euler 2)
-}

projectEuler2::Int
projectEuler2 = sum [ x | x <- takeWhile (<=4000000) fib, even x]
  where
    fib = 1 : 1 : zipWith (+) fib (tail fib)

main=do
 print (projectEuler2)


      
  
  