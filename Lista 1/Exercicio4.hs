{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 04: Faça uma função mult35 x que retorne True caso a entrada seja múltiplo de 3 e 5 e False caso contrário.
-}

mult35:: Integer->Bool
mult35 x    
  | ((x `rem`3)==0)&&((x `rem`5)==0) = True   
  | otherwise  = False

main = do
  print ( mult35 15)
      