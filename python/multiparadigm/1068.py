# Done
while True:
    try:
        expression = input()

        for char in expression:
            if char != '(' and char != ')':
                expression = expression.replace(char, '')

        while expression.find('()') != -1:
            expression = expression.replace('()', '', 1)

        if expression == '':
            print('correct')
        else: print('incorrect')

    except EOFError:
        break
