from bisect import bisect_left

houses_number = int(input())
houses = []
for i in range(houses_number):
    houses.append(int(input()))
result = int(input())

for house in houses:
    position = bisect_left(houses, result - house)
    if position < houses_number and houses[position] == result - house :
        print("%d %d" % (house, result - house))
        break
