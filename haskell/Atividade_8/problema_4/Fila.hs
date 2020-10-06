module Fila (Fila (Queue),
             enqueue,
             dequeue,
             first,
             empty_queue) where


data Fila t = Queue [t]
    deriving (Eq, Show)

enqueue :: Fila t -> t -> Fila t
enqueue (Queue s) x = Queue (x:s)

dequeue :: Fila t -> Fila t
dequeue (Queue []) = error "Empty Queue"
dequeue (Queue (x:s)) = Queue s

first :: Fila t -> t
first (Queue []) = error "Empty Queue"
first (Queue (x:s)) = x

empty_queue :: Fila t
empty_queue = Queue []
