def prepare_print(data):
    wrd = ''
    for x in data:
        wrd += str(x) + ' -> '
    wrd += '\\'
    return wrd


cases = int(input())
for x in range(cases):
    v, thrash = map(int, input().split())
    numbers = map(int, input().split())
    dd = {}
    for t in range(v):
        dd[t] = []
    for nb in numbers:
        aux = nb % v
        dd[aux].append(nb)
    for t in range(v):
        print(t, '->', prepare_print(dd[t]))
    if x != cases - 1:
        print()
