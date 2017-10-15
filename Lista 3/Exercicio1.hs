--Exercício 01: Crie uma função divisivel20 x que retorna verdadeiro se x for divisível por todos os números de 1 a 20.

divisivel20 x = and [ x`mod`n==0 | n <- [1..20]]

main=do
 print (divisivel20 2)