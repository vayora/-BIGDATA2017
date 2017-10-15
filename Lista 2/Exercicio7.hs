
--Exercício 07: Faça uma função que calcule o coeficiente binomial de (m,n).


binomial :: Int->Int->Int
binomial m n = fatorial(m) `div`(fatorial(n) * fatorial(m-n))
  where
    fatorial x 
      | x == 0 = 1 
      | otherwise = fatorial (x - 1) * x 

main=do
  print (binomial 8 4)