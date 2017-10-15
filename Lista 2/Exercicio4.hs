{-|
Module      : Lista 2 - Exercícios sobre Funções
Description : Funções em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 04: Faça uma função que determine se um número é primo.
-}

ehPrimo:: Integer->Bool
ehPrimo x 
  | x < 2 = False
  | otherwise = ehPrimoAux x 2 
                       
ehPrimoAux x y 
  | y*y > x        = True
  | x `mod` y == 0 = False
  | otherwise      = ehPrimoAux x (y+1)
main = do
 print (ehPrimo 17)
      


      
  
  