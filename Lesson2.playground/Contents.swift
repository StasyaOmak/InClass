import UIKit

var greeting = "Hello, playground"

//MARK: -Tuples
var myNameIs: (String, String) = ("A", "M")

var myBossIs: (String, String, Int) = ("Jake", "Doe", 44)
print("my boss name is \(myBossIs.0) \(myBossIs.1) and he is \(myBossIs.2) years old")


//MARK: -Operatos

var a = 10
a = a + 1
a = a - 1
a = a * 1
a = a / 2

var b = 10
b += 1
b /= 2

let e = 9
let f = 4

var g = e % f
print("g is", g)


a == b
a != b
a > b
a < b
a >= b
a <= b



//MARK: -Logical operators
let latestXcodeVersion = false
let latestOSVerion = true

if !latestOSVerion {
    if latestXcodeVersion {
        print("My latest verion")
    }
}

if latestXcodeVersion && latestOSVerion {
    print("My both version are up todate")
}

if latestXcodeVersion || latestOSVerion {
    print("latestXcodeVersion", latestXcodeVersion)
    print("latestOSVerion", latestOSVerion)
    print("one of my version are up todate")
}
