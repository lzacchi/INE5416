data Forma = Circulo Float
           | Retangulo Float Float
           | Triangulo Float Float

area :: Forma -> Float
area (Circulo r) = pi * r * r
area (Retangulo b h) = b * h
area (Triangulo b h) = (b * h)/2


forma :: Forma
forma = Triangulo 2 6

main = do
    print(area(Circulo 6.42))
    print(area(Retangulo 4 5))
    print(area forma)
