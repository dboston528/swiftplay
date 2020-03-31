//Implementing a queue data structure in swift.

class Queue {

    //resizable array
    var queueArray =  [String]()
    
    // enqueue - adds item to the back of the array
    func enqueue(item:String) {
        //use append to add an item to the back of the array also known as the top of the stack sturucture
        self.queueArray.append(item)
    }
    
    //dequeue - removes items from the front of the data Structure
    func dequeue()->String? {
        //Check if the last item is nul
        if self.queueArray.first != nil {
            //store last item in a string variable
            let firstString = self.queueArray.first
            self.queueArray.removeFirst()
            return firstString!
        } else {
            return nil
        }
    }
    
    //peek - accesses the first item of the queue. 
    func peek() -> String? {
        if self.queueArray.first != nil {
            return self.queueArray.first
        } else {
            return nil
        }
    }
}

var myQueue = Queue()
myQueue.enqueue(item: "Peggy")
myQueue.enqueue(item: "Larry")
myQueue.enqueue(item: "Serena")

print (myQueue.peek()!)
print (myQueue.peek()!)
var firstToLeav = myQueue.dequeue()
print (myQueue.peek()!)
