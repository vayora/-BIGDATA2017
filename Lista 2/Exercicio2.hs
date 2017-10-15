{-|
Module      : Lista 2 - Exercícios sobre Funções
Description : Funções em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 02: Crie uma função tipoTriangulo que determina o tipo do triângulo formado pelos três lados x, y, z.
-}

tipoTriangulo :: Int->Int->Int->String
tipoTriangulo x y z
  | (x==y) && (y==z) && (z==x) = "Triangulo equilatero"
  | (x==y) || (y==z) || (z==x) = "Triangulo isosceles"
  | otherwise = "Triangulo escaleno" 


main = do
  print (tipoTriangulo 3 4 5)
      


      
  
  