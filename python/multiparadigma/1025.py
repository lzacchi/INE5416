def search(start,end,value,data):
  if end >= start:

    mid = start+(end-start)//2

    if data[mid] == value:
      for i in range(mid, 0, -1):
        if data[i-1] != value:
          return i

      return 0

    elif data[mid] > value:
      return search(start,mid-1,value,data)

    else:
      return search(mid+1,end,value,data)
  else:
    return -1

count = 1
while True:
  num,queries = input().split()
  num = int(num)
  queries = int(queries)

  if num == 0 and queries == 0:
    break

  queue = []

  for _ in range(num):
    queue.append(int(input()))
  queue.sort()


  print('CASE# {}:'.format(count))
  count += 1
  for _ in range(queries):
    find = int(input())
    result = search(0,len(queue)-1,find,queue)

    if result == -1:
      print('{} not found'.format(find))
    else:
      print('{} found at {}'.format(find,result+1))
