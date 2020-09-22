data Ponto = Ponto2D Float Float
           | Ponto3D Float Float Float

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D x1 y1) (Ponto2D x2 y2) = (((x2 - x1) ** 2) + ((y2 - y1) ** 2)) ** 1/2
distancia (Ponto3D x1 y1 z1) (Ponto3D x2 y2 z2) = (((x2 - x1) ** 2) + ((y2 - y1) ** 2) + ((z2 - z1) ** 2)) ** 1/2


main = do
    print(distancia (Ponto2D 2.0 3.0) (Ponto2D 3.0 4.0))
    print(distancia (Ponto3D 2.0 3.0 4.0) (Ponto3D 3.0 4.0 5.0))
