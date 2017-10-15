{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 05: Faça um programa que retorne True caso a entrada seja menor que -1 ou (maior que 1 E múltiplo de 2), e False caso contrário.
-}

f::Integer->Bool
f x    
  | x < (-1)|| ((x >1)&& (x `rem`2==0))= True   
  | otherwise  = False

main = do
  print ( f (-2))
      