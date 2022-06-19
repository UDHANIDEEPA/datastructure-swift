import UIKit

func mergeSortedArrays(array1: [Int], array2:[Int]) -> [Int] {
    var mergedArray : [Int] = []
    
    //check input
    if(array1.count == 0) {
        return array2
    }
    
    if(array2.count == 0){
        return array1
        
    }
    
    var arr1Item: Int? = array1[0]
    var arr2Item : Int? = array2[0]
    var i: Int = 1
    var j: Int = 1
    
    while(arr1Item != nil || arr2Item != nil) {
        if arr1Item == nil {
            appendDataInSecondArray()
        }
        else if arr2Item == nil {
            appendDataInFirstArray()
        }
        else if let arr1 = arr1Item, let arr2 = arr2Item {
            if(arr1 < arr2) {
                appendDataInFirstArray()
            }
            else {
                appendDataInSecondArray()
            }
            
        }
    }
    
    
    func appendDataInFirstArray() {
        mergedArray.append(arr1Item!)
        if (i < array1.count) {
            arr1Item = array1[i]
            i += 1
        }
        else {
            arr1Item = nil
        }
    }
    
    func appendDataInSecondArray(){
        mergedArray.append(arr2Item!)
        if(j < array2.count) {
            arr2Item = array2[j]
            j += 1
        }
        else {
            arr2Item =  nil
        }
    }
    return mergedArray
    
}

print(mergeSortedArrays(array1: [0,3,10,15,20], array2: [1,5,12,19,25,30,50]))

