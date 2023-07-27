func recursive_sum(array: Array<Int>) -> Int {
    if array.isEmpty {
        return 0
    } else {
        let newArray = Array(array[1...])
        return array[0] + recursive_sum(array: newArray)
    }
}

func recursive_count(array: Array<Int>) -> Int {
    if array.isEmpty {
        return 0
    } else {
        let newArray = Array(array[1...])
        return 1 + recursive_count(array: newArray)
    }
}

print(recursive_count(array: [1, 2, 3]))