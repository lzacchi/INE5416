module Arvore (Arvore, minha_arvore,
               soma_elementos, busca_elemento,
               limite_superior, minimo,
               minimo_elemento, ocorrencias_elemento,
               maiores_que, quantidade,
               media, elementos) where

data Arvore = Null | No Int Arvore Arvore

minha_arvore :: Arvore
minha_arvore = No 64 (No 32 (No 16 Null Null) (No 128 Null Null)) (No 4 (No 32 Null Null) (No 32 Null Null))

soma_elementos :: Arvore -> Int
soma_elementos Null = 0
soma_elementos (No n esq dir) = n + (soma_elementos esq) + (soma_elementos dir)

busca_elemento :: Arvore -> Int -> Bool
busca_elemento Null _ = False
busca_elemento (No n esq dir) x
    | (n == x) = True
    | otherwise = (busca_elemento esq x) || (busca_elemento dir x)

limite_superior :: Int
limite_superior = 1000 -- limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimo_elemento :: Arvore -> Int
minimo_elemento Null = limite_superior
minimo_elemento (No n esq dir) =
    minimo n (minimo (minimo_elemento esq) (minimo_elemento dir))

-- 1
ocorrencias_elemento :: Arvore -> Int -> Int
ocorrencias_elemento (No n Null Null) x = if n == x
  then 1
  else 0
ocorrencias_elemento (No n esq dir) x
  | (n == x) = 1 +  (ocorrencias_elemento esq x) + (ocorrencias_elemento dir x)
  | otherwise = (ocorrencias_elemento esq x) + (ocorrencias_elemento dir x)


-- 2
maiores_que :: Arvore -> Int -> Int
maiores_que (No n Null Null) x
  | (x < n) = 1
  | otherwise = 0
maiores_que (No n esq dir) x
  | (x < n) = 1 + (maiores_que esq x) + (maiores_que dir x)
  | otherwise = (maiores_que esq x) + (maiores_que dir x)


-- 3
quantidade :: Arvore -> Int
quantidade (No n Null Null) = 1
quantidade (No n esq dir) = 1 + (quantidade esq) + (quantidade dir)


-- 4
media :: Arvore -> Float
media (No n esq dir) = fromIntegral(soma_elementos(No n esq dir)) / fromIntegral(quantidade(No n esq dir))


-- 5
elementos :: Arvore -> [Int]
elementos (No n Null Null) = [n]
elementos (No n esq dir) = [n] ++ (elementos esq) ++ (elementos dir)
