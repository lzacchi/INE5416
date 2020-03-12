# -*- coding: utf-8 -*-

count = int(input())

for i in range(count):
    stack =''
    flag = 0
    word = input()
    for j in range(len(word)):
        if word[j] == '{' or word[j] == '[' or word[j] == '(':
            stack+= word[j]
        elif word[j] == ')':
            if len(stack) > 0 and stack[-1] == '(':
                stack = stack[:-1]
            else:
                flag = 1
                continue
        elif word[j] == ']':
            if len(stack) > 0 and stack[-1] == '[':
                stack = stack[:-1]
            else:
                flag = 1
                continue
        elif word[j] == '}':
            if len(stack) > 0 and stack[-1] == '{':
                stack = stack[:-1]
            else:
                flag = 1
                continue
    if len(stack) == 0 and flag == 0:
      print('S')
    else:
      print('N')
