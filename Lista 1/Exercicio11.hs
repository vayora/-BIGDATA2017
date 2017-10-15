{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 11: Crie um concatenador de strings que concatena duas strings separadas por espaço.
-}

concatena:: String-> String-> String
concatena string1 string2 = string1 ++" "++ string2

main=do
  print (concatena "a" "b")
  
  