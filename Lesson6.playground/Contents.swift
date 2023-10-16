import UIKit

var greeting = "Hello, playground"

// MARK: - Enumeration

var someDay = "Monday"

func setupAlarm() {
    if someDay == "monday" {
        print("setup alarm at 7AM")
    } else {
        print("No alarm for today")
    }
}

setupAlarm()

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday, sunday
}

var weekday = Weekday.monday

func setupAlarmTwo() {
    if weekday == .monday || weekday == .tuesday {
        print("setup alarm at 7AM")
    } else {
        print("No alarm for today")
    }
}

setupAlarmTwo()


func setupSleepTimer() {
    switch weekday {
    case .monday:
        print("setup alarm at 7AM")
    case .tuesday:
        print("setup alarm at 7AM")
    case .wednesday:
        print("setup alarm at 7AM")
    case .thursday:
        print("setup alarm at 7AM")
    case .friday:
        print("setup alarm at 7AM")
    case .saturday:
        print("setup alarm at 7AM")
    case .sunday:
        print("setup alarm at 7AM")
    }
}

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = CalculationType.addition
print(calc.rawValue)

enum Planet: Int {
    case earth = 1, venus, mercury, mars, jupiter, saturn, neptune, uranas
}

var somePlanet = Planet.mars
var marsPlanet = Planet(rawValue: 4)

print("Mars is the \(somePlanet.rawValue) planet from the sun")


enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("setup bed time at", 11, "PM")
print(wnd)


// MARK: - Struct vs Class

struct ChessBoard {
    var playerName: String?
    var x: Int?
    var y: Int?
    
    func getPositionOnBoard() {
        print("The position of \(playerName ?? ""): x \(x ?? 0), y \(y ?? 0)")
    }
}

var playerOne = ChessBoard(playerName: "P1", x: 23, y: 6)
var playerTwo = ChessBoard(playerName: "P2", x: 1, y: 7)

playerOne.getPositionOnBoard()
playerOne.getPositionOnBoard()

class MacBook {
    var name: String?
    var year: Int?
    var color: String?
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    func getSpecs() {
        print("\(name ?? ""), year \(year ?? 0), color \(color ?? "")")
    }
}
var macBookPro = MacBook(name: "MacBookPro", year: 2021, color: "Grey")

let macBookAir = macBookPro
macBookAir.name = "makBookAir"


macBookPro.getSpecs()
macBookAir.getSpecs()


struct IPhone {
    var name: String?
    var year: Int?
    var color: String?
    var capacity: Int?
    
    func getSpecs() {
        print("Model: \(name ?? ""), year: \(year ?? 0), color: \(color ?? ""), \(capacity ?? 0) of GB")
    }
}
    
let iPhoneSE = IPhone(name: "iphone SE", year: 2020, color: "Black", capacity: 64)
    
var iPhoneMini = iPhoneSE
iPhoneMini.name = "iPhone mini"

iPhoneSE.getSpecs()
iPhoneMini.getSpecs()
