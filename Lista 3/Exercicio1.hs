{-|
Module      : Lista 3 - Exercícios sobre Listas
Description : Listas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 01: Crie uma função divisivel20 x que retorna verdadeiro se x for divisível por todos os números de 1 a 20.
-}

divisivel20:: Int->Bool
divisivel20 x = and [ x`mod`n==0 | n <- [1..20]]

main=do
 print (divisivel20 2)


      
  
  