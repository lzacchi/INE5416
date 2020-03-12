block = int(input())
while (block != 0):
    line = input().split()
    while (line[0] != '0'):
        i = len(line)
        k = i
        stack = [0]*i
        index = 0
        while (i > 0):
            if (k == 0):
                break
            stack[index] = int(line[i-1])
            if (stack[index] != k):
                index += 1
            else:
                k -= 1
                for j in range(index-1, -1, -1):
                    if (stack[j] != k):
                        index = j + 1
                        break
                    k -= 1
                    if (j == 0):
                        index = 0
                        break
            i -= 1
        if (k == 0):
            print('Yes')
        else:
            print('No')

        line = input().split()
    print()
    block = int(input())
