import UIKit

var greeting = "Hello, playground"


// MARK: -Functions()

func multiplyTwoNumbers() {
    print("result:", 3 * 3)
}

multiplyTwoNumbers()

func multiplyTwoNumber() -> Int {
    let a = 5
    let b = 2
    return a * b
}
multiplyTwoNumber()

func multiplaTwoNumber(numberOne a: Int, numberTwo b: Int ) -> Int {
    return a * b
}
multiplaTwoNumber(numberOne: 2, numberTwo: 12)

func multiplaTwoNumber(a: Int, b: Int) -> Int {
    return a * b
}

multiplaTwoNumber(a: 14, b: 4)

func multiplaTwoNumber(_ numberOne: Int, _ numberTwo: Int) -> Int {
    return numberOne * numberTwo
}

multiplaTwoNumber(5, 5)

func multiplaTwoNumber(_ numberOne: Int, multiply numberTwo: Int) -> Int {
    return numberOne * numberTwo
}
multiplaTwoNumber(4, multiply: 4)


func averageCalculation(_ numbers: Double...) -> Double {
    var total = 0.0
    for myNumber in numbers {
        total += myNumber
    }
    return total / Double(numbers.count)
}

averageCalculation(10, 5, 10, 5, 10, 5)


let someValue = 5
let someArrayOfNumbers = [7, 5, 11, 2, 18, 15, 3, 4]


filterLessThan(value: someValue, numbers: someArrayOfNumbers)

func filterLessThan(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for myNumber in numbers {
        if myNumber < value {
            filteredNumbers.append(myNumber)
        }
    }
    
    return filteredNumbers
}


func calculateDateOfBirth(fromMyDay day: Int, fromMyMonth month: Int, fromMyYear year: Int ) {
    let currentDate = Date()
    
    var dateComponets = DateComponents()
    dateComponets.day = day
    dateComponets.month = month
    dateComponets.year = year
    
    let userCalendar = Calendar.current
    
    if let calculateDate = userCalendar.date(from: dateComponets) {
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year
        
        print("\(yearPassed ?? 0) years, \(monthPassed ?? 0) month and \(dayPassed ?? 0) days have passed since my birthday")
    }
}
calculateDateOfBirth(fromMyDay: 24, fromMyMonth: 11, fromMyYear: 1993)
