{-|
Module      : Lista 3 - Exercícios sobre Listas
Description : Listas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 02: Crie uma função projectEuler5 que retorna o primeiro número natural que retorna True para a função do exercício anterior. Pense em como reduzir o custo computacional.
-}

mdc::Int->Int->Int
mdc a b | a < b = mdc b a
 | b == 0 = a
 | otherwise = mdc b (mod a b)
mmc::Int->Int->Int
mmc x y = (x * y) `div` (mdc x y)

projectEuler5::Int
projectEuler5 = foldr1 mmc [1..20]

main=do
 print (projectEuler5)


      
  
  