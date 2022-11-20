
import Foundation

/*
 ------------------------ String Manipulation ---------------------
 */
// Get characters from String
var characters = Array(string)

// Insert characters of a string at the beginning
var word = ""
word.insert("a", at: word.startIndex)

["A", "bue", "la"].reduce("", +) // Abuela
// Remove character
var longWord = "Long word"
longWord.remove(at: longWord.index(longWord.startIndex, offsetBy: 3))
print(longWord) // Lon word
// Prefix and suffix
let password = "12345"
let prefix = "123"
let suffix = "345"

password.hasPrefix("123")
password.hasSuffix("345")

// Contains sub string
var string = "hello Swift"

if let range = string.range(of: "Swift") {
// Delete sub string
    string.removeSubrange(range) //hello
}

// Delete prefix and suffix
password.dropFirst(prefix.count) //45
password.dropLast(suffix.count)  //12
            
// join elements
let array = ["Andrew", "Ben", "John", "Paul", "Peter", "Laura"]
let joined = array.joined(separator: ", ")

// split element
let value = "i live in a house"
value.split(separator: " ")

/*
 ------------------------ Math Operations ---------------------
 */

// Character to Int
let char: Character = "9"
let digit = char.wholeNumberValue

// get digit count of number
let num = 566456
let digitCount = String(num).count

pow(10, 2) // 10^2 = 100 but returns a Decimal
//To convert it to Int
(pow(10, 2) as NSDecimalNumber).intValue

// get digits
let digits = Array(String(num))

let a = [1, 2, 3]
a.reduce(0, +) // 6

/*
 ------------------------ Array Operations ---------------------
 */

// for loop
for i in 0..<10 {
//from 0 to 9 excluding 10
}

for i in 0...10 {
//from 0 to 10 including 10
}

// for each No index needed
let cities = ["Amsterdam", "New York", "San Francisco"]
for city in cities {
    print(city)
}

// Amsterdam
// New York
// San Francisco
// for with index
let list = [Int]()
for (index, element) in list.enumerated() {
  print("Item \(index): \(element)")
}

// From end to beginning
for i in stride(from: 10, to: 0, by: -1) {
    print(i) //It prints from 10 to 1 excluding the to value
}

for i in stride(from: 10, through:  0, by: -1) {
    print(i) //It prints from 10 to 0 (including the through value)
}

// Reverse array
func newArrayReversing(array: [Int]) -> [Int] {
    var reversed = [Int]()
    var arrayIndex = array.count - 1
    
    while(arrayIndex >= 0) {
        reversed.append(array[arrayIndex])
        arrayIndex -= 1
    }
    
    return reversed
}

func reverseExistingArray(array: inout [Int]) -> [Int] {
    var arrayIndex = array.count - 1
    var reversedIndex = 0
    var temp = 0
    
    while (reversedIndex < arrayIndex) {
        temp = array[reversedIndex]
        array[reversedIndex] = array[arrayIndex]
        array[arrayIndex] = temp
        
        reversedIndex += 1
        arrayIndex -= 1
    }
    
    return array
}

// Create an array of random numbers between 1 and 20
func makeList(_ n: Int) -> [Int] {
    return (0..<n).map { _ in .random(in: 1...20) }
}


/*
 ------------------------ Matrix Operations ---------------------
 */
var matrix = [[1, 2, 3, 10], [4, 5, 6, 20], [7, 8, 9, 30]]

print("Matrix ------- each row column by column")

// Go trough each row column by column
for i in 0..<matrix.count {
    for j in 0..<matrix[0].count {
        let item = matrix[i][j]
        
        print(item)
    }
}

print("Matrix --- each column row by row ")
// Go trough each column row by row
for i in 0..<matrix[0].count {
    for j in 0..<matrix.count {
        let item = matrix[j][i]
        
        print(item)
    }
}
