{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 03: Faça uma função mult5 x que retorne True caso a entrada seja múltiplo de 5 e False caso contrário.
-}

mult5 :: Integer->Bool
mult5 x    
  | (x `rem`5)==0 = True   
  | otherwise  = False

main = do
  print ( mult5 24)