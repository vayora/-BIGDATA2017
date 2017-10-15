{-|
Module      : Lista 3 - Exercícios sobre Listas
Description : Listas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 03: Crie a lista de números de Fibonacci utilizando uma função geradora.
-}

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main=do
 print (fibs !! 10)


      
  
  