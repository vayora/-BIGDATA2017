
--Exercício 08: Faça uma função que calcule o elemento (i,j) do triângulo de pascal.

pascal :: [[Integer]]
pascal = iterate func [1]
  where func x = zipWith (+) (0:x) (x++[0])

main=do
print (take 6 pascal)


