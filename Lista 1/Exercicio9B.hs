{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 9B: Encontre os 10 últimos anos bissextos (dica: use a função length para determinar o tamanho da lista).
-}


bissexto:: Int->Bool
bissexto anobi = ((anobi `rem` 400 == 0) || ((anobi `rem` 4 == 0) && (anobi `rem` 100 /= 0)))

constroi_lista::[Int]
constroi_lista = [anobi|anobi<-[1..2017], bissexto anobi]

ultimos_10::[Int]
ultimos_10 = drop ((length constroi_lista)-10) constroi_lista

main=do
   print (ultimos_10)