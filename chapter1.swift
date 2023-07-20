// Binary Search
func binary_search(sorted_array: Array<Int>, item: Int) -> Int? {
    var low = 0
    var high = sorted_array.count - 1

    var median: Int = 0
    var guess: Int = 0

    while low <= high {
        median = (high + low) / 2
        guess = sorted_array[median]

        if guess < item {
            low = median + 1
        } else if guess > item {
            high = median - 1
        } else {
            return median
        }
    }

    return nil
}

let intArray: [Int] = Array(1...100)
print(binary_search(sorted_array: intArray, item: 60) ?? 0)