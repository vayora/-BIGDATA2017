-- Exercício 12: Dada a string “0123456789”, crie uma lista com os dígitos em formato Integer

main = do
  print (map (\x -> read [x]::Integer) "0123456789")
      



