type Nome = String
type Disciplina = String
type Nota = Float

type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

aluno :: Int -> Aluno
aluno 1 = ("Lucas", "Paradigmas de Programação", 10.0, 10.0, 10.0)
aluno 2 = ("Bob", "Organização de Computadores", 5.75, 5.75, 5.75)
aluno 3 = ("Jon", "Redes", 10.0, 4.0, 4.0)


get_nome :: Aluno -> Nome
get_nome (n, _, _, _, _) = n


get_media :: Int -> Float
get_media x = calcula_media (aluno x)

calcula_media ::  Aluno -> Float
calcula_media (_, _, n1, n2, n3) = (n1 + n2 + n3)/ 3


main = do
    print(get_nome (aluno 1))
    print(get_nome (aluno 2))
    print(get_nome (aluno 3))

    print(get_media 1)
    print(get_media 2)
    print(get_media 3)
