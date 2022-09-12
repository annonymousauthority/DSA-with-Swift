import Foundation

class Node<T>: CustomStringConvertible, Equatable{
    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return lhs.next == rhs.next
    }

    var value: T
    var next: Node?

    var description: String{
        guard let next_node = next else{return "\(value)"}
        return "\(value)->" + String(describing: next_node)
    }
    init(_ _value: T, _ next: Node? = nil) {
        self.value = _value
        self.next = next
    }
}



struct LinkedList<T>: CustomStringConvertible{
    var head: Node<T>?
    var tail: Node<T>?

    init(){
        tail = head?.next
    }

    var isEmpty: Bool{
        return head == nil
    }

    var description: String{
        guard let head = head else {return "Empty Linked List"}
        return String(describing: head)
    }

    // Push function to the head of the list

    mutating func push(_ value: T){
        if isEmpty{
            head = Node(value)
            tail = head
            return
        }

        let newNode = Node(value)
        newNode.next = head
        head = newNode
    }

    mutating func append(_ value: T){
        if isEmpty {
            self.push(value)
            return
        }

        if head?.next == nil {
            head?.next = Node(value)
            tail = head?.next
            return
        }
        if tail?.next == nil {
            tail?.next = Node(value)
            tail = tail?.next
            return
        }

    }
    func node(_ index: Int) -> Node<T>?{
        if isEmpty{
            return nil
        }

        var currentNode = head
        var currentIndex = 0
        while currentNode != nil && currentIndex < index{
            currentNode = currentNode?.next
            currentIndex += 1
        }
        return currentNode
    }

    func count() -> Int{
        if isEmpty{
            return 0
        }
        var count = 0
        var currentNode = head
        while currentNode != nil{
            currentNode = currentNode?.next
            count += 1
        }
        return count
    }
    mutating func insert (_ index: Int, _ value: T){
        if isEmpty {
            self.push(value)
            return
        }
        if index > count() {
            self.append(value)
        }

        let currentNode = node(index)
        currentNode?.next = Node(value, currentNode?.next)
    }

    mutating func reverse()->Node<T>?{
        if isEmpty {
            return nil
        }
        var start: Node<T>? = nil
        var current = self.head
        while current != nil{
            let next = current?.next
            current?.next = start
            start = current
            current = next
            print(start?.description as Any)
        }
        return start

    }
}

var ll = LinkedList<Int>()
ll.push(2)
ll.push(4)
ll.push(3)
var ll2 = LinkedList<Int>()
ll2.push(5)
ll2.push(6)
ll2.push(4)

func sumLinkedList(_ list1: LinkedList<Int>, _ list2: LinkedList<Int>) -> LinkedList<Int>?{
    var l1Head = list1.head
    var l2Head = list2.head
    var sum = LinkedList<Int>()
    while l1Head != nil && l2Head != nil {
        var node_sum = Int(l1Head!.value) + Int(l2Head!.value)
        sum.push(node_sum)
        l1Head = l1Head?.next
        l2Head = l2Head?.next
    }
    return sum
}

print(sumLinkedList(ll, ll))

