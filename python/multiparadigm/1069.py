# Done
cases = int(input())

for i in range(cases):
    inpt = str(input())

    inpt = inpt.replace(".", "")  # replaces all '.' with empty spaces
    print(inpt)
    diamonds = 0

    while inpt.find("<>") != -1:
        inpt = inpt.replace("<>", "", 1)  # replaces one occurence of '<>' with an empty space
        print(inpt)
        diamonds += 1

    print(diamonds)
