--Exercício 03: Faça uma função que calcule a soma da diagonal secundária de uma matriz.
somaDiagSec matriz
  | nlinhas  == ncols  =  sum [ matriz!!i!!(ncols-1-i)  | i <- [0..nlinhas-1]  ]
  | otherwise =  error "matriz nao e quadrada"
  where
      nlinhas = length matriz
      ncols = length (matriz!!0)
        
main=do
print (somaDiagSec [[10,5,12], [2,3,6], [2,3,6]])


