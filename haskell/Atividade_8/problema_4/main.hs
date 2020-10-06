import Fila

main = do
    print (enqueue (enqueue empty_queue 1) 2)
    print (first (Queue [5, 4, 3, 2, 1]))
    print (dequeue(Queue [1, 3, 5, 7, 9]))
