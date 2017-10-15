-- Exercício 02: Crie uma função tipoTriangulo que determina o tipo do triângulo formado pelos três lados x, y, z.

tipoTriangulo :: Int->Int->Int->String
tipoTriangulo x y z
  | (x==y) && (y==z) && (z==x) = "Triangulo equilatero"
  | (x==y) || (y==z) || (z==x) = "Triangulo isosceles"
  | otherwise = "Triangulo escaleno" 


main = do
  print (tipoTriangulo 3 4 5)
      



--Triângulo equilátero: possui os três lados com medidas iguais. 
--Triângulo isósceles: possui dois lados com medidas iguais. 
--Triângulo escaleno: possui os três lados com medidas diferentes. 