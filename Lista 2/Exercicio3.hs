--Exercício 03: Implemente uma função que faz a multiplicação etíope entre dois números.
impar::Integer->Bool
impar x = ((x `mod`2) /= 0)

etiope::Integer->Integer->Integer
etiope 1 n = n
etiope m n 
  |impar m = n + etiope (m `div` 2) (n*2)
  |otherwise = etiope (m `div` 2) (n*2) 
 
etiope m n = etiope1 m n 0
  where
    etiope1 1 n r = (n+r) 
    etiope1 m n r 
      |impar m = etiope1 (m `div` 2) (n*2) (n+r)
      |otherwise = etiope1 (m `div` 2) (n*2) (n+r) 


main = do
 print (etiope 13 21)