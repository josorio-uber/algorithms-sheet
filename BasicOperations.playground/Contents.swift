
import Foundation

/*
 ------------------------ String Manipulation ---------------------
 */
// Get characters from String
var characters = Array(string)

// Insert characters of a string at the beginning
var word = ""
word.insert("a", at: word.startIndex)

//append character at end
var newStringToAppendTo = "a"
var char3: Character = "b"
newStringToAppendTo.append(char3)

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
 ------------------------ String index Operations
 */
var str = "Hello, playground"

// start index and end index

// character
str[str.startIndex] // H
//str[str.endIndex]   // error: after last character

// range
let range = str.startIndex..<str.endIndex
str[range]  // "Hello, playground"

/*
after
As in: index(after: String.Index)

after refers to the index of the character directly after the given index.
Examples
*/

// character
let index = str.index(after: str.startIndex)
str[index]  // "e"

// range
let range2 = str.index(after: str.startIndex)..<str.endIndex
str[range2]  // "ello, playground"

/*
before
As in: index(before: String.Index)

before refers to the index of the character directly before the given index.
Examples
*/
// character
let index1 = str.index(before: str.endIndex)
str[index]  // d

// range
let range3 = str.startIndex..<str.index(before: str.endIndex)
str[range3]  // Hello, playgroun

/*
offsetBy
As in: index(String.Index, offsetBy: String.IndexDistance)

The offsetBy value can be positive or negative and starts from the given index. Although it is of the type String.IndexDistance, you can give it an Int.
Examples
*/

// character
let index3 = str.index(str.startIndex, offsetBy: 7)
str[index]  // p

// range
let start = str.index(str.startIndex, offsetBy: 7)
let end = str.index(str.endIndex, offsetBy: -6)
let range4 = start..<end
str[range]  // play

/*
limitedBy
As in: index(String.Index, offsetBy: String.IndexDistance, limitedBy: String.Index)

The limitedBy is useful for making sure that the offset does not cause the index to go out of bounds. It is a bounding index. Since it is possible for the offset to exceed the limit, this method returns an Optional. It returns nil if the index is out of bounds.
Example
*/

// character
if let index5 = str.index(str.startIndex, offsetBy: 7, limitedBy: str.endIndex) {
    str[index5]  // p
}

/*
 Get index
 And get index all the way to the end.
 */

let string2 = "abcdefghijklmn"
if let indexOfLastF = string2.lastIndex(of: "f") {
    let substring = string2[indexOfLastF] // f
    
    // get subtring from current index to the end of string
    let substring2 = string2[indexOfLastF...] //"fghijklmn"
}

/*
 First index
 subrange from current index to the end
 Replace subrange
 Last Index
 */

var replaceString = "foo(bar)ahdsa"

if let openIdx = replaceString.lastIndex(of: "(") {
    let closeIdx = replaceString[openIdx...].firstIndex(of:")")! //subrange from current index to the end
    replaceString.replaceSubrange(openIdx...closeIdx, with: replaceString[replaceString.index(after: openIdx)..<closeIdx].reversed())
    print(replaceString)
}


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

// square root
25.0.squareRoot() //5

// Nth root
var radicand:Double = 125
var rootIndex: Double = 3
var rootResult:Double = 0.0

rootResult = pow(radicand,1/rootIndex) // 5

print("Result: ",rootResult)

// log
print(log2(8.0)) // 3.0

// Custom base log function
func logC(val: Double, forBase base: Double) -> Double {
    return log(val)/log(base)
}

print(logC(val: 9.0, forBase: 3.0)) // "2.0"
print(logC(val: 16.0, forBase: 4.0)) // "2.0"

// get digits
let digits = Array(String(num))

let a = [1, 2, 3]
a.reduce(0, +) // 6

let doubleWithDecimal = 4.5466

//round down
floor(doubleWithDecimal) // 4

//round up
ceil(doubleWithDecimal) // 5

// The round function will round to the nearest whole number:
let doubleNumber: Double = 1.95
let roundedDouble = round(doubleNumber)
// roundedDouble is 2.0

let floatNumber: Float = 3.42
let roundedFloat = round(floatNumber)
// roundedFloat is 3.0

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
