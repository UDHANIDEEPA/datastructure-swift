import UIKit

struct MyArray<T> {
    var length: Int = 0
    var data : [T] = []

    func get(_ itemAtIndex: Int) -> T? {
        if (!(self.data.isEmpty) && itemAtIndex < self.length ) {
            let  item = self.data[itemAtIndex]
            return item
        }
        
        return nil
    }
    
    @discardableResult mutating func push(_ item: T) -> Int{
        //data.append(item)
        //data.insert(item, at: self.length)
        self.data.append(item)
        self.length += 1
        return self.length
    }
    
    @discardableResult mutating func pop() -> T? {
        if self.length >= 1 {
            let lastItem = self.data[self.length-1]
            self.data.remove(at: self.length-1)
            self.length -= 1
            return lastItem
        }
        return nil
        
    }
    
    @discardableResult mutating func delete(_ index: Int) -> T? {
        if (!(self.data.isEmpty) && index < self.length ) {
            let item = self.data[index]
            shiftItems(index)
            return item
        }
        return nil
    }
    
    private mutating func shiftItems(_ index: Int) {
        for i in index ..< self.length-1 {
            self.data[i] =  self.data[i+1]
        }
        self.pop()
    }
    
    func reverseString(_ str: String) {
      
    }
}



var array = MyArray<String>()
print(array.get(0))

array.push("first")
array.push("second")
array.pop()
//array.pop()
//array.pop()
array.push("third")
array.push("fourth")
array.push("fifth")
array.pop()
array.push("sixth")
array.push("seventh")
array.push("eighth")
array.delete(0)
array.delete(3)
print(array)
