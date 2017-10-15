{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 10: Crie uma tupla em que o primeiro elemento tem metade dos anos bissextos e o segundo elemento a outra metade.
-}

bissexto:: Int->Bool
bissexto anobi = ((anobi `rem` 400 == 0) || ((anobi `rem` 4 == 0) && (anobi `rem` 100 /= 0)))

constroi_lista::[Int]
constroi_lista = [anobi|anobi<-[1..2017], bissexto anobi]

n = (length constroi_lista) `div`2

primeira_metade = take n constroi_lista
segunda_metade = drop n constroi_lista


main=do
  print (zip primeira_metade segunda_metade)
  