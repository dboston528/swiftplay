//Implementing a stack in swift

class Stack {

    //resizable array
    var stackArray =  [String]()
    // push
    func push(item:String) {
        //use append to add an item to the back of the array also known as the top of the stack sturucture
        self.stackArray.append(item)
    }
    
    //pop - removes items from the top of the stack
    func pop()->String? {
        //Check if the last item is nul
        if self.stackArray.last != nil {
            //store last item in a string 
            let lastString = self.stackArray.last
            self.stackArray.removeLast()
            return lastString!
        } else {
            return nil
        }
    }
    
    //peek - accesses the item on top of the stack but not remove it. 
    func peek() -> String? {
        if self.stackArray.last != nil {
            return self.stackArray.last
        } else {
            return nil
        }
    }
}

var deck:Stack = Stack()

deck.push(item: "Heart: Queen")
deck.push(item: "Spade: Jack")
deck.push(item: "Diamond: 4")
print(deck.peek()!)
print(deck.peek()!)

var firstItemPopped =  deck.pop()
var secondItemPopped = deck.pop()
print(firstItemPopped!)
print(secondItemPopped!)
