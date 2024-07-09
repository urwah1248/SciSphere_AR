Map data = {
  // Stack information
  "Stack":
      "Stack is a linear data structure based on LIFO (Last In First Out) principle in which the insertion of a new element and removal of an existing element takes place at the same end represented as the top of the stack.",
  "Stack_Operations": [
    "1. push() to insert an element into the stack",
    "2. pop() to remove an element from the stack",
    "3. top() Returns the top element of the stack.",
    "4. isEmpty() returns true if stack is empty else false.",
    "5. isFull() returns true if the stack is full else false ",
  ],
  "Stack_Code": """from sys import maxsize

def createStack():
    stack = []
    return stack

def isEmpty(stack):
    return len(stack) == 0

def push(stack, item):
    stack.append(item)
    print(item + " pushed to stack ")
    
def pop(stack):
    if (isEmpty(stack)):
        return str(-maxsize -1) 
    return stack.pop()

def peek(stack):
    if (isEmpty(stack)):
        return str(-maxsize -1) 
    return stack[len(stack) - 1]

stack = createStack()
push(stack, str(10))
push(stack, str(20))
push(stack, str(30))
print(pop(stack) + " popped from stack")""",

  // Queue information
  "Queue":
      "A Queue Data Structure is a fundamental concept in computer science used for storing and managing data in a specific order. It follows the principle of “First in, First out” (FIFO), where the first element added to the queue is the first one to be removed. Queues are commonly used in various algorithms and applications for their simplicity and efficiency in managing data flow.",
  "Queue_Operations": [
    "1. Enqueue: Adds (or stores) an element to the end of the queue.",
    "2. Dequeue: Removal of elements from the queue.",
    "3. Peek or front: Acquires the data element available at the front node of the queue without deleting it.",
    "4. rear: This operation returns the element at the rear end without removing it.",
    "5. isFull: Validates if the queue is full.",
    "6. isEmpty: Checks if the queue is empty.",
  ],
  "Queue_Code": """queue = []
queue.append('a')
queue.append('b')
queue.append('c')
print("Initial queue")
print(queue)
print("\nElements dequeued from queue")
print(queue.pop(0))
print(queue.pop(0))
print(queue.pop(0))
print("\nQueue after removing elements")
print(queue)""",

  // Linked List information
  "Linked List":
      "A Linked List is a linear data structure where each element is a separate object, known as a node. Each node contains data and a reference to the next node in the sequence, allowing for efficient insertion and deletion operations.",
  "Linked List_Operations": [
    "1. insertAtBeginning(data): Inserts a new node with the specified data at the beginning of the list.",
    "2. insertAtEnd(data): Adds a new node with the specified data at the end of the list.",
    "3. deleteNode(key): Deletes the first node found with the specified key.",
    "4. search(key): Searches for a node with the specified key.",
    "5. display(): Displays all the nodes in the list.",
  ],
  "Linked List_Code": """class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def insertAtBeginning(self, data):
        new_node = Node(data)
        new_node.next = self.head
        self.head = new_node

    def insertAtEnd(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            return
        last = self.head
        while last.next:
            last = last.next
        last.next = new_node

    def deleteNode(self, key):
        temp = self.head
        if temp is not None:
            if temp.data == key:
                self.head = temp.next
                temp = None
                return
        while temp is not None:
            if temp.data == key:
                break
            prev = temp
            temp = temp.next
        if temp == None:
            return
        prev.next = temp.next
        temp = None

    def search(self, key):
        current = self.head
        while current:
            if current.data == key:
                return True
            current = current.next
        return False

    def display(self):
        elems = []
        current = self.head
        while current:
            elems.append(current.data)
            current = current.next
        print(elems)

ll = LinkedList()
ll.insertAtBeginning(1)
ll.insertAtEnd(2)
ll.insertAtEnd(3)
ll.display()
ll.deleteNode(2)
ll.display()
print(ll.search(3))""",

  // Circular Linked List information
  "Circular Linked List":
      "A Circular Linked List is a variation of the linked list where the last node points to the first node instead of pointing to null, forming a circular structure. This allows for circular traversal of the list.",
  "Circular Linked List_Operations": [
    "1. insertAtBeginning(data): Inserts a new node with the specified data at the beginning of the circular list.",
    "2. insertAtEnd(data): Adds a new node with the specified data at the end of the circular list.",
    "3. deleteNode(key): Deletes the first node found with the specified key.",
    "4. search(key): Searches for a node with the specified key.",
    "5. display(): Displays all the nodes in the circular list.",
  ],
  "Circular Linked List_Code": """class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class CircularLinkedList:
    def __init__(self):
        self.head = None

    def insertAtBeginning(self, data):
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            new_node.next = self.head
        else:
            current = self.head
            while current.next != self.head:
                current = current.next
            new_node.next = self.head
            self.head = new_node
            current.next = self.head

    def insertAtEnd(self, data):
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            new_node.next = self.head
        else:
            current = self.head
            while current.next != self.head:
                current = current.next
            current.next = new_node
            new_node.next = self.head

    def deleteNode(self, key):
        if self.head:
            if self.head.data == key:
                if self.head.next == self.head:
                    self.head = None
                else:
                    current = self.head
                    while current.next != self.head:
                        current = current.next
                    current.next = self.head.next
                    self.head = self.head.next
            else:
                current = self.head
                prev = None
                while current.next != self.head:
                    if current.data == key:
                        break
                    prev = current
                    current = current.next
                if current.data == key:
                    prev.next = current.next

    def search(self, key):
        if self.head:
            current = self.head
            while True:
                if current.data == key:
                    return True
                current = current.next
                if current == self.head:
                    break
        return False

    def display(self):
        elems = []
        if self.head:
            current = self.head
            while True:
                elems.append(current.data)
                current = current.next
                if current == self.head:
                    break
        print(elems)

cll = CircularLinkedList()
cll.insertAtBeginning(1)
cll.insertAtEnd(2)
cll.insertAtEnd(3)
cll.display()
cll.deleteNode(2)
cll.display()
print(cll.search(3))""",

  // Doubly Linked List information
  "Doubly Linked List":
      "A Doubly Linked List is a type of linked list in which each node contains a reference to the next node and the previous node. This allows traversal in both directions, forward and backward.",
  "Doubly Linked List_Operations": [
    "1. insertAtBeginning(data): Inserts a new node with the specified data at the beginning of the list.",
    "2. insertAtEnd(data): Adds a new node with the specified data at the end of the list.",
    "3. deleteNode(key): Deletes the first node found with the specified key.",
    "4. search(key): Searches for a node with the specified key.",
    "5. display(): Displays all the nodes in the list.",
  ],
  "Doubly Linked List_Code": """class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        self.prev = None

class DoublyLinkedList:
    def __init__(self):
        self.head = None

    def insertAtBeginning(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
        else:
            self.head.prev = new_node
            new_node.next = self.head
            self.head = new_node

    def insertAtEnd(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
        else:
            current = self.head
            while current.next:
                current = current.next
            current.next = new_node
            new_node.prev = current

    def deleteNode(self, key):
        current = self.head
        while current:
            if current.data == key:
                if current.prev:
                    current.prev.next = current.next
                if current.next:
                    current.next.prev = current.prev
                if current == self.head:
                    self.head = current.next
                current = None
                return
            current = current.next

    def search(self, key):
        current = self.head
        while current:
            if current.data == key:
                return True
            current = current.next
        return False

    def display(self):
        elems = []
        current = self.head
        while current:
            elems.append(current.data)
            current = current.next
        print(elems)

dll = DoublyLinkedList()
dll.insertAtBeginning(1)
dll.insertAtEnd(2)
dll.insertAtEnd(3)
dll.display()
dll.deleteNode(2)
dll.display()
print(dll.search(3))""",

  // Circular Doubly Linked List information
  "Circular Doubly Linked_List":
      "A Circular Doubly Linked List is a variation of the doubly linked list where the last node points to the first node and the first node points to the last node, forming a circular structure. This allows for circular traversal in both directions.",
  "Circular Doubly Linked List_Operations": [
    "1. insertAtBeginning(data): Inserts a new node with the specified data at the beginning of the circular doubly linked list.",
    "2. insertAtEnd(data): Adds a new node with the specified data at the end of the circular doubly linked list.",
    "3. deleteNode(key): Deletes the first node found with the specified key.",
    "4. search(key): Searches for a node with the specified key.",
    "5. display(): Displays all the nodes in the circular doubly linked list.",
  ],
  "Circular Doubly Linked_List_Code": """class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        self.prev = None

class CircularDoublyLinkedList:
    def __init__(self):
        self.head = None

    def insertAtBeginning(self, data):
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            new_node.next = new_node
            new_node.prev = new_node
        else:
            tail = self.head.prev
            new_node.next = self.head
            new_node.prev = tail
            self.head.prev = new_node
            tail.next = new_node
            self.head = new_node

    def insertAtEnd(self, data):
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            new_node.next = new_node
            new_node.prev = new_node
        else:
            tail = self.head.prev
            new_node.next = self.head
            new_node.prev = tail
            tail.next = new_node
            self.head.prev = new_node

    def deleteNode(self, key):
        if self.head:
            current = self.head
            while True:
                if current.data == key:
                    if current.next == current:
                        self.head = None
                    else:
                        current.prev.next = current.next
                        current.next.prev = current.prev
                        if current == self.head:
                            self.head = current.next
                    current = None
                    return
                current = current.next
                if current == self.head:
                    break

    def search(self, key):
        if self.head:
            current = self.head
            while True:
                if current.data == key:
                    return True
                current = current.next
                if current == self.head:
                    break
        return False

    def display(self):
        elems = []
        if self.head:
            current = self.head
            while True:
                elems.append(current.data)
                current = current.next
                if current == self.head:
                    break
        print(elems)

cdll = CircularDoublyLinkedList()
cdll.insertAtBeginning(1)
cdll.insertAtEnd(2)
cdll.insertAtEnd(3)
cdll.display()
cdll.deleteNode(2)
cdll.display()
print(cdll.search(3))""",
};
