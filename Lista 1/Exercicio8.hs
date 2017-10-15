{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 08: Crie uma lista de anos bissextos desde o ano 1 até o atual
-}

constroi_lista:: [Int]
constroi_lista = [anobi|anobi<-[1..2017], bissexto anobi]

bissexto:: Int->Bool
bissexto anobi = ((anobi `rem` 400 == 0) || ((anobi `rem` 4 == 0) && (anobi `rem` 100 /= 0)))

main=do
 print (constroi_lista)