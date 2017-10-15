
--Exercício 08: Crie uma lista de anos bissextos desde o ano 1 até o atual
constroi_lista = [anobi|anobi<-[1..2017], bissexto anobi]

bissexto:: Int->Bool
bissexto anobi = ((anobi `rem` 400 == 0) || ((anobi `rem` 4 == 0) && (anobi `rem` 100 /= 0)))

main=do
 print (constroi_lista)