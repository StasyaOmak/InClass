import UIKit

var greeting = "Hello, playground"

//MARK: -Collections

let arrayOfStrings: [String] = ["a", "a", "c", "b"]
arrayOfStrings[0]

var arrayOfInt = [Int]()
let arrayOfChar: [Character] = ["a", "a", "c", "b"]

arrayOfInt = [2, 3, 4, 5]

arrayOfInt = [1, 2, 3, 4, 5]
arrayOfInt += [6, 7, 8, 9]

arrayOfInt.append(10)
arrayOfInt.insert(0, at: 0)

print("arrayOfInt is:", arrayOfInt)
dump(arrayOfInt)

type(of: arrayOfInt)

let someArrayOfInt = [99, 88]

var result = arrayOfInt + someArrayOfInt

print(result)
dump(result)

!someArrayOfInt.isEmpty
arrayOfInt.removeFirst()

var fruits = ["mango", "apple", "durian"]
fruits.reverse()
print(fruits)

if !fruits.isEmpty {
    fruits.append("orange")
    fruits.insert("pear", at: 3)
    fruits.insert(contentsOf: ["kiwi", "banana"], at: 2)
}
print(fruits)


fruits.removeAll { fruit in
    fruit == "kiwi"
}

print(fruits)


let searchFruit = fruits.contains { fruit in
    fruit == "pear"
}

print(fruits)

var listOfArray: [[Int]] = [[1,3,5], [0,0,0], [10,11,12]]
print(listOfArray[2][0])

// Set

var setOfInt: Set <Int> = []
setOfInt = [1,2,1,1,4,5]

setOfInt.insert(22)
setOfInt.remove(5)
setOfInt.contains(22)
print(setOfInt)

let someArrayResult = setOfInt.sorted()
print("someArrayResult:::", someArrayResult)

type(of: someArrayResult)

//Dictionary

var someStringDict = Dictionary<String, String>()
var moreStringDict = [Int: String]()
var stringDict: [String: String] = [:]

var student: [String: String] = [
    "customerEmail": "m@m.lv",
    "customerName": "AA",
    "customerSurname": "BB",
    "customerDOB": "12/02/1988",
    "website": "www"
]

student["customerName"]
student["customerName"] = "wwwwwwwwwwwwwww"

student.updateValue("www.acc.com", forKey: "website")
student.removeValue(forKey: "customerSurname")
student["website"] = nil
dump(student)

var fruitsList: [String: [String]] = [
    "A": ["Apple", "Apricot"],
    "B": ["Banana", "Blueberry"]
]

fruitsList["B"]


//For loop

//print("1 x 10 is \(1 * 10)")
//print("2 x 10 is \(2 * 10)")
//print("3 x 10 is \(3 * 10)")
//print("4 x 10 is \(4 * 10)")
//print("5 x 10 is \(5 * 10)")

for i in 1...5 {
    print("\(i) * 10 is \(5 * 10)")
}

for _ in 1...5 {
    print("Hello!!!")
}

for index in 1...5 {
    print("\(index) Hello!!!")
}

let apples = [
    "red apples",
    "green apples",
    "green apples",
    "red apples",
    "red apples",
    "red apples",
]

var basket = 0

for apple in apples {
    if apple == "red apples" {
        basket += 1
    }
}
print("I have \(basket) red apples in my basket")


let numberOfLegs = [
    "spider": 8,
    "dog": 4,
    "ant": 6
]

for (animalName, legsCount) in numberOfLegs {
    print("\(animalName)'s has \(legsCount)")
}

var counter = 0

while true {
    counter += 1
    print("my counter is \(counter)")
    if counter == 16 {
        print("break")
        break
    }
}
