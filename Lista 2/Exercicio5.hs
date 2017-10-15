--Exercício 05: Faça uma função que calcule a soma dos dígitos de um número.

somadig :: Integer->Integer
somadig 0 = 0
somadig n = ( n `mod` 10 ) + (somadig ( n `div` 10 ))
main = do
 print (somadig 189)
