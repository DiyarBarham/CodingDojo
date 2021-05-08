class SList:
    def __init__(self):
        self.head = None

    def add_to_front(self, value):
        new_node = SLNode(value)
        new_node.next = self.head
        self.head = new_node
        return self

    def print_values(self):
        raverse = self.head
        while raverse != None:
            print(raverse.val)
            raverse = raverse.next
        return self

    def add_to_back(self, value):
        if self.head == None:
            self.add_to_front(value)
            return self

        raverse = self.head
        while raverse.next != None:
            raverse = raverse.next
        new_node = SLNode(value)
        raverse.next = new_node
        return self

    def remove_from_front(self):
        nexelem = self.head
        self.head = nexelem.next
        nexelem.next = None
        return self

    def remove_from_back(self):
        raverse = self.head
        while raverse.next != None:
            holder = raverse
            raverse = raverse.next
        holder.next = None
        return self

    def remove_at(self, val):
        raverse = self.head
        while raverse.val != val:
            holder = raverse
            raverse = raverse.next

        if raverse == self.head:
            self.head = raverse.next
            return self
        holder.next = raverse.next
        return self

    def insert_at(self, val, n):
        raverse = self.head
        for counter in range(n):
            holder = raverse
            raverse = raverse.next
        new_node = SLNode(val)
        if raverse == self.head:
            self.head = new_node
            new_node.next = raverse
            return self
        holder.next = new_node
        new_node.next = raverse
        return self

class SLNode:
    def __init__(self, val):
        self.val = val
        self.next = None

my_list = SList()	# create a new instance of a list
my_list.add_to_front("are").add_to_front("Linked lists").add_to_back("fun!").insert_at("too", 2).print_values()