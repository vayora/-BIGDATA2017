--Exercício 04: Faça uma função que determine se um número é primo.

ehPrimo:: Integer->Bool
ehPrimo x 
  | x < 2 = False
  | otherwise = ehPrimoAux x 2 
                       
ehPrimoAux x y 
  | y*y > x        = True
  | x `mod` y == 0 = False
  | otherwise      = ehPrimoAux x (y+1)
main = do
 print (ehPrimo 17)
