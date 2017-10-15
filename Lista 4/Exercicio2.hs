

--Exercício 02: Faça uma função que calcule a soma da diagonal principal de uma matriz.





diagonalPrincipal m = zipWith (!!) m [0..]


main=do

print (diagonalPrincipal [[10,5,2], [2,3,6], [2,3,6]])


