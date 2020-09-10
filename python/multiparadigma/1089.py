# Done
while True:
    cases = int(input())
    if cases == 0:
        break

    peaks = 0
    samples = input().split()

    for i in range(len(samples)):
        samples[i] = int(samples[i])
    if samples[0] > samples[len(samples) - 1] and samples[0] > samples[1]:
        peaks += 1

    if samples[0] < samples[len(samples) - 1] and samples[0] < samples[1]:
        peaks += 1


    for i in range(1, len(samples) - 1):
        if samples[i] > samples[i+1] and samples[i] > samples[i-1]:
            peaks += 1
        elif samples[i] < samples[i+1] and samples[i] < samples[i-1]:
            peaks += 1


    if samples[len(samples) - 1] > samples[len(samples) - 2] and samples[len(samples) - 1] > samples[0]:
        peaks += 1

    if samples[len(samples) - 1] < samples[len(samples) - 2] and samples[len(samples) - 1] < samples[0]:
        peaks += 1

    print(peaks)
