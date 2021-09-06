import UIKit

// MARK: - Exercise 1

func isPalindrome(text: String) -> Bool {
    
    if Array(text) == text.reversed() {
        return true
    } else {
        return false
    }
    
}

//print(isPalindrome(text: "acba"))
//print(isPalindrome(text: "abba"))

// MARK: - Exercise 2

func minSplit(amount: Int) -> Int {
    
    var res = 0
    var amount = amount
    
    if amount / 50 != 0 {
        res += amount / 50
        amount = amount % 50
    }
    if amount / 20 != 0 {
        res += amount / 20
        amount = amount % 20
    }
    if amount / 10 != 0 {
        res += amount / 10
        amount = amount % 10
    }
    if amount / 5 != 0 {
        res += amount / 5
        amount = amount % 5
    }
    if amount / 1 != 0 {
        res += amount / 1
        amount = amount % 1
    }
    
    return res
    
}

//print(minSplit(amount: 57))
//print(minSplit(amount: 137))

// MARK: - Exercise 3

func notContains(array: [Int]) -> Int {
    
    var res = 0
    while true {
        res += 1
        if array.contains(res) {
            continue
        } else {
            break
        }
    }
    return res
    
}

let firstArray = [1, 2, 3, 5, 6]
let secondArray = [0, 2, 3, 5, 6]

//print(notContains(array: firstArray))
//print(notContains(array: secondArray))

//MARK: - Exercise 4

func isProperly(sequence: String) -> Bool {
    
    if sequence.count % 2 == 0 {
        
        let normalSequence = Array(sequence)
        let reversedSequence = Array(sequence.reversed())
        
        for i in 0..<sequence.count {
            if normalSequence[i] == "(" && reversedSequence[i] == ")" {
                continue
            } else if normalSequence[i] == ")" && reversedSequence[i] == "(" {
                continue
            } else {
                return false
            }
        }
        
        return true
        
    } else {
        return false
    }
    
}

//print(isProperly(sequence: "(()())"))
//print(isProperly(sequence: "())()"))

//MARK: - Exercise 5

func countVariants(stairsCount: Int) -> Int {

    if stairsCount == 1 || stairsCount == 0 {
        return 1
    } else if stairsCount == 2 {
        return 2
    } else {
        return countVariants(stairsCount: stairsCount - 2) + countVariants(stairsCount: stairsCount - 1)
    }

}

//print(countVariants(stairsCount: 3))
//print(countVariants(stairsCount: 6))

//MARK: - Exercise 6

class dataStructure {
    
    private var array: [Int]
    
    init(array: [Int]) {
        self.array = array
    }
    
    func removeElement(index: Int) {
        if array.indices.contains(index) {
            array.remove(at: index)
            print("Success")
        } else {
            print("There is no such an index found in an array")
        }
    }
    
}

//var object = dataStructure(array: [1, 2, 3, 4, 5])
//object.removeElement(index: 1)
//object.removeElement(index: 7)
