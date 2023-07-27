// Recursive functions
func countdown(_ number: Int) {
    print("\(number)...")
    
    if number <= 1 {
        print(0)
        return
    } else {
        countdown(number - 1)
    }
}

// Explanation about stack
func factorial(_ n: Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

print(factorial(5))