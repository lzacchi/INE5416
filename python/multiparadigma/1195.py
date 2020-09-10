class Node:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

class Tree:
    def __init__(self):
        self.root = None
        self.buffer = ""

    def insert(self, value):
        if self.root is None:
            self.root = Node(value)
        else:
            self.add(self.root, value)

    def add(self, node, value):
        if value < node.value:
            if node.left != None:
                self.add(node.left, value)
            else:
                node.left = Node(value)
        else:
            if node.right != None:
                self.add(node.right, value)
            else:
                node.right = Node(value)

    def print_buffer(self):
        print(self.buffer)
        self.buffer = ''


    def in_order(self, node):
        if node is not None:
            self.in_order(node.left)
            self.buffer += " %s" % str(node.value)
            self.in_order(node.right)

    def pre_order(self, node):
        if node is not None:
            self.buffer += " %s" % str(node.value)
            self.pre_order(node.left)
            self.pre_order(node.right)

    def post_order(self, node):
        if node is not None:
            self.post_order(node.left)
            self.post_order(node.right)
            self.buffer += " %s" % str(node.value)


cases = int(input())
for i in range(cases):
    ammount = int(input())
    elements = [int(x) for x in input().split()]
    tree = Tree()

    for element in elements:
        tree.insert(element)

    print("Case %d:" % (i + 1))
    print("Pre.:", end="")
    tree.pre_order(tree.root)
    tree.print_buffer()

    print("In..:", end="")
    tree.in_order(tree.root)
    tree.print_buffer()

    print("Post:", end="")
    tree.post_order(tree.root)
    tree.print_buffer()
    print()
