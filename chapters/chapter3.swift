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

countdown(5)