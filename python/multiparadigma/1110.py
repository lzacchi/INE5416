# Done
while True:
    n_cards = int(input())

    if n_cards == 0: break

    cards = []
    discarded_cards = []
    for i in range(1, n_cards + 1):
        cards.append(i)

    while len(cards) > 1:
        discarded_cards.append(cards.pop(0))
        cards.insert(len(cards) -1, cards.pop(0))

    print("Discarded cards:", str(discarded_cards).replace("[", "").replace("]", ""))
    print("Remaining card:", str(cards).replace("[", "").replace("]", ""))
