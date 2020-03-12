while True:
    cases = int(input())

    if cases == 0:
        break
    else:
        line = input().split()
        desired = input().split()

        stationed = []
        i = 0
        output = ''

        while len(line) > 0:
            flag = True
            stationed.append(line.pop(0))
            output += 'I'

            while flag:
                if len(stationed) > 0 and stationed[len(stationed) - 1] == desired[i]:
                    stationed.pop(len(stationed) - 1)
                    output += 'R'
                    i += 1
                else:
                    flag = False

        if len(stationed) > 0:
            output += ' Impossible'

    print(output)
