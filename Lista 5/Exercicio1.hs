{-|
Module      : Lista 5 - Exercícios sobre ADT
Description : ADT em Haskell
Copyright   : (c) Veruska Ayora, 2017
License     : GPL-3
Maintainer  : veruska.ayora@ufabc.edu.br
Exercício 01: Resolva o problema da Zebra utilizando ADTs para representar as soluções. Para encontrar a resposta você deve enumerar todas as combinações até que encontre uma que atenda todas as restrições.
-}



import Data.List
import Data.Maybe


data Cor = Amarelo | Azul | Vermelho | Marfim | Verde deriving (Eq, Show, Enum, Bounded)

data Nacionalidade = Noruegues | Ucraniano | Ingles| Espanhol | Japones deriving (Eq, Show, Enum, Bounded)

data Bebida = Agua | Cha | Leite | SucoLaranja | Cafe deriving (Eq, Show, Enum, Bounded)

data Fuma = Kools | Chesterfield | OldGold | LuckyStrike | Parliament deriving (Eq, Show, Enum, Bounded)

data Animal = Raposa | Cavalo | Caracois | Cao | Zebra deriving (Eq, Show, Enum, Bounded)

type Casa = (Cor, Nacionalidade, Bebida, Fuma, Animal)

type Casas = (Casa, Casa, Casa, Casa, Casa)

valores :: (Enum a, Bounded a) => [a]
valores = [ minBound .. maxBound ]

cores = valores
naconalidades = valores
bebidas = valores
cigarros = valores
animais = valores

composto :: [Casa]
composto = [ (cor, nacionalidade, bebida, cigarro, animal) 
 |cor <- cores,
  nacionalidade <- naconalidades,
  bebida <- bebidas,
  cigarro <- cigarros,
  animal <- animais]

eq :: Casa -> Casa -> Bool
eq (a,b,c,d,e) (f,g,h,i,j) 
 | a == f = True
 | b == g = True
 | c == h = True
 | d == i = True
 | e == j = True
 | otherwise = False 

-- 1. O inglês vive na casa vermelha.
pista1 :: Casa -> Bool
pista1 (cor, nacionalidade, _, _, _) 
 | cor == Vermelho && nacionalidade == Ingles = True
 | cor == Vermelho = False
 | nacionalidade == Ingles = False
 | otherwise = True


-- 2. O espanhol é dono do cachorro.
pista2 :: Casa -> Bool
pista2 (_, nacionalidade, _, _, animal) 
 | nacionalidade == Espanhol && animal == Cao = True
 | animal == Cao = False
 | nacionalidade == Espanhol = False
 | otherwise = True

--3. A casa verde toma café.
pista3 :: Casa -> Bool
pista3 (cor,_, bebida, _, _) 
 | cor == Verde && bebida == Cafe = True
 | cor == Verde = False
 | bebida == Cafe = False
 | otherwise = True

-- 4. O Ucraniano toma chá
pista4 :: Casa -> Bool
pista4 (_, nacionalidade, bebida, _, _) 
 | nacionalidade == Ucraniano && bebida == Cha = True
 | nacionalidade == Ucraniano = False
 | bebida == Cha = False
 | otherwise = True

--5.A casa verde fica imediatamente à direita da casa de marfim.
pista5 (_:[]) = False
pista5 ((Marfim, _, _, _, _):(Verde, _, _, _, _):_) = True
pista5 ((_, _, _, _, _):(Verde, _, _, _, _):_) = False
pista5 ((Marfim, _, _, _, _):(_, _, _, _, _):_) = False
pista5 (_:xs) = pista5 xs

-- 6.O fumante Old Gold possui caracóis.
pista6 :: Casa -> Bool
pista6 (_, _, _, cigarro, animal) 
 | cigarro == OldGold && animal == Caracois = True
 | cigarro == OldGold = False
 | animal == Caracois = False
 |otherwise = True

-- 7. A casa amarela tem o fumante de Kools.
pista7 :: Casa -> Bool
pista7 (cor, _, _, cigarro, _) 
 | cigarro == Kools && cor == Amarelo = True
 | cigarro == Kools = False
 | cor == Amarelo = False
 | otherwise = True
 
-- 8. O leite é tomado na casa do meio.
pista8 :: Casa -> Bool
pista8 (_,_,beb,_,_) 
 | beb == Leite = True
 | otherwise = False

--9 O norueguês vive na primeira casa.
pista9 :: Casa -> Bool
pista9 (_,nor,_,_,_) 
 | nor == Noruegues = True
 | otherwise = False
 
-- 10. O homem que fuma Chesterfields vive na casa ao lado do homem com a raposa.
pista10 ((_, _,_, _, Raposa):(_, _, _, Chesterfield, _):_) = True
pista10 ((_, _, _, Chesterfield, _):(_, _, _, _, Raposa):_) = True
pista10 ((_, _,_, _, Raposa):(_, _, _, _, _):_) = False
pista10 ((_, _, _, _, _):(_, _, _, _, Raposa):_) = False
pista10 ((_, _,_, _, _):(_, _, _, Chesterfield, _):_) = False
pista10 ((_, _, _, Chesterfield, _):(_, _, _, _, _):_) = False
pista10 [_] = False
pista10 (_:xs) = pista10 xs

-- 11. Kools são fumados na casa ao lado da casa onde o cavalo é mantido.
pista11 ((_, _, _, _, Cavalo):(_, _, _, Kools, _):_) = True
pista11 ((_, _, _, Kools, _):(_, _, _, _, Cavalo):_) = True
pista11 ((_, _, _, _, Cavalo):(_, _, _, _, _):_) = False
pista11 ((_, _, _, _, _):(_, _, _, _, Cavalo):_) = False
pista11 ((_, _, _, _, _):(_, _, _, Kools, _):_) = False
pista11 ((_, _, _, Kools, _):(_, _, _, _, _):_) = False
pista11 [_] = False
pista11 (_:xs) = pista11 xs

-- 12. O fumante Lucky Strike bebe suco de laranja.
pista12 :: Casa -> Bool
pista12 (_, _, bebida, cigarro, _)  
 | cigarro == LuckyStrike && bebida == SucoLaranja = True
 | cigarro == LuckyStrike = False
 | bebida == SucoLaranja = False
 | otherwise = True

-- 13. O japonês fuma Parliaments
pista13 :: Casa -> Bool
pista13 (_, nacionalidade, _, cigarro, _) 
 | cigarro == Parliament && nacionalidade == Japones = True
 | cigarro == Parliament = False
 | nacionalidade == Japones = False
 | otherwise = True

--14 O norueguês mora ao lado da casa azul.
pista14 :: Casa -> Bool
pista14 (azul,_,_,_,_) 
 | azul == Azul = True
 | otherwise = False

-- Se O norueguês vive na primeira casa, e mora ao lado da casa azul. Então a casa azul está a direita do noruegues                      
pista14_Extra (_:[]) = False
pista14_Extra ((_, Noruegues, _, _, _):(Azul, _, _, _, _):_) = True
pista14_Extra ((_, _, _, _, _):(Azul, _, _, _, _):_) = False
pista14_Extra ((_, Noruegues, _, _, _):(_, _, _, _, _):_) = False
pista14_Extra (_:xs) = pista14_Extra xs


solucaoParte1 = filter pista1 $ filter pista2 $ filter pista3 $ filter pista4 $ filter pista6 $ filter pista7 $ filter pista12 $ filter pista13 composto


solucaoParte2 = [ [c1, c2, c3, c4, c5] 
 |c1 <- (filter pista9 $ filter (not.pista8) $ filter (not.pista14) solucaoParte1),
  c2 <- (filter pista14 $ filter (not.pista8) $ filter (not.pista9) solucaoParte1),
  c3 <- (filter pista8 $ filter (not.pista9) $ filter (not.pista14) solucaoParte1),
  c4 <- (filter (not.pista8) $ filter (not.pista9) $ filter (not.pista14) solucaoParte1),
  c5 <- (filter (not.pista8) $ filter (not.pista9) $ filter (not. pista14) solucaoParte1),
  c1 `eq` c2 == False,
  c1 `eq` c3 == False,
  c1 `eq` c4 == False,
  c1 `eq` c5 == False,
  c2 `eq` c3 == False,
  c2 `eq` c4 == False,
  c2 `eq` c5 == False,
  c3 `eq` c4 == False,
  c3 `eq` c5 == False,
  c4 `eq` c5 == False,                               
  pista5 [c1, c2, c3, c4, c5] == True,
  pista10 [c1, c2, c3, c4, c5] == True,
  pista11 [c1, c2, c3, c4, c5] == True,
  pista14_Extra [c1, c2, c3, c4, c5] == True
  ]

main :: IO ()
main=do 
print (zip ["Casa 1-->", "Casa 2-->", "Casa 3-->", "Casa 4-->", "Casa 5-->"] (head solucaoParte2))
          






  