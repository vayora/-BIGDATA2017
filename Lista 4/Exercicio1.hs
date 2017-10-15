{-|
Module      : Lista 4 - Exercícios sobre Matrizes
Description : Matrizes em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 01: Faça uma função que gere uma matriz identidade de tamanho n.
-}

matrizIdentidade :: Int->[[Int]]
matrizIdentidade n = [ [fromEnum (i == j) | i <- [1..n]] | j <- [1..n]]

main = do
  print (matrizIdentidade 5)



  