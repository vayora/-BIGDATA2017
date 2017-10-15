
--Exercício 09: Encontre os 10 primeiros anos bissextos
constroi_lista = [anobi|anobi<-[1..2017], bissexto anobi]

bissexto:: Int->Bool
bissexto anobi = ((anobi `rem` 400 == 0) || ((anobi `rem` 4 == 0) && (anobi `rem` 100 /= 0)))

main=do
 print (take 10 constroi_lista)