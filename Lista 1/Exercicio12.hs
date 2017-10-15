{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 12: Dada a string “0123456789”, crie uma lista com os dígitos em formato Integer
-}

main = do
  print (map (\x -> read [x]::Integer) "0123456789")
      
  
  