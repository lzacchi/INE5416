# Done
cases = int(input())

countries = []
for i in range(cases):
    country_results = input().split()
    countries.append(country_results)

countries = sorted(countries, key=lambda x : (-int(x[1]), -int(x[2]), -int(x[3]), x[0]))

for country in countries:
    print(country[0], country[1], country[2], country[3])
