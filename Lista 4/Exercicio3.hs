{-|
Module      : Lista 4 - Exercícios sobre Matrizes
Description : Matrizes em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 03: Faça uma função que calcule a soma da diagonal secundária de uma matriz.
-}

somaDiagSec::[[Int]]->Int
somaDiagSec matriz
  | nlinhas  == ncols  =  sum [ matriz!!i!!(ncols-1-i)  | i <- [0..nlinhas-1]  ]
  | otherwise =  error "matriz nao e quadrada"
  where
    nlinhas = length matriz
    ncols = length (matriz!!0)
        
main=do
print (somaDiagSec [[10,4,12], [2,4,6], [2,3,6]])






  