--Exercício 02: Faça uma função que calcule a soma da diagonal principal de uma matriz.
somaDiagPrinc  matriz
    | nlinhas  == ncols  =  sum  [ matriz!!i!!i  | i <- [0..nlinhas-1]  ]
    | otherwise =  error "matriz nao e quadrada"
    where
        nlinhas = length matriz
        ncols = length (matriz!!0)
        
main=do
print (somaDiagPrinc [[10,5,12], [2,3,5], [2,3,6]])


