{-|
Module      : Lista 2 - Exercícios sobre Funções
Description : Funções em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 05: Faça uma função que calcule a soma dos dígitos de um número.
-}

somadig :: Integer->Integer
somadig 0 = 0
somadig n = ( n `mod` 10 ) + (somadig ( n `div` 10 ))
main = do
 print (somadig 189)
      


      
  
  