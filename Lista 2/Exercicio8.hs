{-|
Module      : Lista 2 - Exercícios sobre Funções
Description : Funções em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 08: Faça uma função que calcule o elemento (i,j) do triângulo de pascal.
-}

pascal :: [[Integer]]
pascal = iterate func [1]
  where func x = zipWith (+) (0:x) (x++[0])

main=do
print (take 6 pascal)


      
  
  