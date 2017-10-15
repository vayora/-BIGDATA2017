--Exercício 11: Crie um concatenador de strings que concatena duas strings separadas por espaço.

concatena:: String-> String-> String
concatena string1 string2 = string1 ++" "++ string2

main=do
  print (concatena "a" "b")
  
