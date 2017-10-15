
-- EXERC. 9B -  Encontre os 10 últimos anos bissextos (dica: use a função length para determinar o tamanho da lista).


bissexto anobi = ((anobi `rem` 400 == 0) || ((anobi `rem` 4 == 0) && (anobi `rem` 100 /= 0)))

constroi_lista = [anobi|anobi<-[1..2017], bissexto anobi]

ultimos_10 = drop ((length constroi_lista)-10) constroi_lista

main=do
   print (ultimos_10)





