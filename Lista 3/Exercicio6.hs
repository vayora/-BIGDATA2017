{-|
Module      : Lista 3 - Exercícios sobre Listas
Description : Listas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
--Exercício 06: Crie a função collatz x que retorna x/2, se x for par e (3x+1) se for ímpar.
-}

collatz:: Integer->Integer
collatz x 
  |x `mod`2 == 0 = x `div` 2
  |otherwise = 3*x + 1

main=do
 print (collatz 4)

  