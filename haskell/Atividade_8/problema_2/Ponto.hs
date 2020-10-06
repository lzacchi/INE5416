module Ponto (Ponto (Ponto2D),
              distancia,
              colineares,
              forma_triangulo) where


data Ponto = Ponto2D Float Float
             deriving Show

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D x1 y1) (Ponto2D x2 y2) = (((x2 - x1) ** 2) + ((y2 - y1) ** 2)) ** 1/2

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares (Ponto2D x1 y1) (Ponto2D x2 y2) (Ponto2D x3 y3) | ((x1 * y2) + (y1 * x3) + (x2 * y3) + (-(x3 * y2) - (y3 * x1) - (x2 * y1))) == 0 = True
                                                           | otherwise = False

forma_triangulo :: Ponto -> Ponto -> Ponto -> Bool
forma_triangulo (Ponto2D x1 y1) (Ponto2D x2 y2) (Ponto2D x3 y3) = not(colineares (Ponto2D x1 y1) (Ponto2D x2 y2) (Ponto2D x3 y3))
