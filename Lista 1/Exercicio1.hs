{-|
Module      : Lista 1 - Exercícios Básicos
Description : Operações Básicas em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 01: Execute as seguintes operações utilizando o menor número de parênteses.
-}
 a = 2*3+5  
 b = 2+2*3+1
 c= 3^4+5*2^5+1 
 main = do  
  putStrLn $ "a) 2.3+5 = " ++ show a ++ "   ; b) 2+2.3+1= " ++ show b ++ "  ; c) 3^4+5.2^5+1= "++ show c