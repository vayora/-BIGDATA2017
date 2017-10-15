{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 06: Faça uma função que recebe um tipo Integer e retorna ele dividido por 2:
-}

div2d x = fromIntegral (x :: Integer) / fromIntegral (2 :: Integer)
main = do
  print (div2d 57)
