{-|
Module      : Lista 4 - Exercícios sobre Matrizes
Description : Matrizes em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 02: Faça uma função que calcule a soma da diagonal principal de uma matriz.
-}

somaDiagPrinc:: [[Int]]->Int
somaDiagPrinc  matriz
    | nlinhas  == ncols  =  sum  [ matriz!!i!!i  | i <- [0..nlinhas-1]  ]
    | otherwise =  error "matriz nao e quadrada"
    where
        nlinhas = length matriz
        ncols = length (matriz!!0)
        
main=do
print (somaDiagPrinc [[10,5,12], [2,3,5], [2,3,6]])







  