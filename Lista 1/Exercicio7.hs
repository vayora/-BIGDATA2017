{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 07: Faça uma função que receba um ângulo a e retorne uma tupla contendo o seno da metade desse ângulo utilizando a identidade:
-}

senAngulo ::Float->(Float,Float) 
senAngulo a = (-sqrt ((1- cos a)/2) , sqrt ((1- cos a)/2))

main = do
  print (senAngulo 30)