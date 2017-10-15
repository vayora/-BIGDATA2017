
{-|
Module      : Lista 2 - Exercícios sobre Funções
Description : Funções em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 06: Faça uma função que calcule a persistência aditiva de um número.
-}

somaDigitos x = ((x - 1) `mod` 9) + 1

main = do 
print (somaDigitos 139)