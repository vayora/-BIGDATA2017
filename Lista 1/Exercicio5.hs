-- Exercício 05: Faça um programa que retorne True caso a entrada seja menor que -1 ou (maior que 1 E múltiplo de 2), e False caso contrário.
 
f::Int->Bool
f x    
  | x < (-1)|| ((x >1)&& (x `rem`2==0))= True   
  | otherwise  = False

main = do
  print ( f (-1))
      


