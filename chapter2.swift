// Selection Sort - O(n^2)
func find_lowest(on array: Array<Int>) -> Int {
    var lowest = array[0]
    var lowestIndex = 0

    for i in 0...array.count - 1 {
        if array[i] < lowest {
            lowest = array[i]
            lowestIndex = i
        }
    }

    return lowestIndex
}

func selection_sort(array: Array<Int>) -> Array<Int> {
    var newArray = [Int]()
    var copy = array.map { $0 }

    for _ in 0...array.count - 1 {
        let lowestIndex = find_lowest(on: copy)
        newArray.append(copy[lowestIndex])
        copy.remove(at: lowestIndex)
    }
    
    return newArray
}

func create_random_array(length: Int) -> Array<Int> {
    var newArray = [Int]()
    
    for _ in 0..<length {
        let element = Int.random(in: 0...100)
        newArray.append(element)
    }

    return newArray
}

// Execution
let array = create_random_array(length: 20)
print(array)
print(selection_sort(array: array))
