// Binary Search - O(log n)
func binary_search(sorted_array: Array<Int>, item: Int) -> (Int?, Int) {
    var low: Int = 0
    var high: Int = sorted_array.count - 1

    var median: Int = 0
    var guess: Int = 0
    var steps: Int = 0

    while low <= high {
        median = (high + low) / 2
        guess = sorted_array[median]
        steps += 1

        if guess < item {
            low = median + 1
        } else if guess > item {
            high = median - 1
        } else {
            return (median, steps)
        }
    }

    return (nil, 0)
}

let intArray: [Int] = Array(1...256)
let position: (Int?, Int) = binary_search(sorted_array: intArray, item: 61)
if let index: Int = position.0 {
    print("The item was found on index \(index). It took \(position.1) steps to find.")
} else {
    print("Item not found on Array.")
}
