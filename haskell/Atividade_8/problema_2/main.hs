module Main (main) where

import Ponto

main = do
    print (distancia (Ponto2D 1 2) (Ponto2D 2 3))
    print (colineares (Ponto2D 1 2) (Ponto2D 1 3) (Ponto2D 1 4))
    print (forma_triangulo (Ponto2D 1 2) (Ponto2D 1 3) (Ponto2D 2 4))
