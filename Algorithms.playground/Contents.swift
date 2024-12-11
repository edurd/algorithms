import Foundation

    // recursion
func factorial(_ value: Int) -> Int {
    if value == 1 {
        return 1
    } else {
        return value * factorial(value - 1)
    }
}

factorial(3)

// binary search
func binarySearch(in array: [Int], for value: Int) -> Int? {
    var lowerBound = 0
    var upperBound = array.count - 1

    while lowerBound <= upperBound {
        let midIndex = (lowerBound + upperBound) / 2
        let midValue = array[midIndex]

        if midValue == value {
            return midIndex
        } else if midValue < value {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex - 1
        }
    }
    return nil
}
let val = 15/2
binarySearch(in: [1,2,3,4,6,7,8,10,12], for: 8)


struct Person {
    var name: String
    var age: Int
}

let person1 = Person(name: "Robert", age: 22)
let person2 = Person(name: "Robert", age: 22)

//print(person1 == person2)





class Animal {

    var name: String
    var numberOfLegs: Int

    init(name: String, numberOfLegs: Int) {
        self.name = name
        self.numberOfLegs = numberOfLegs
    }
//
//    static func == (lhs: Animal, rhs: Animal) -> Bool {
//        return lhs.name == rhs.name && lhs.numberOfLegs == rhs.numberOfLegs
//    }
}

let animal1 = Animal(name: "Dog", numberOfLegs: 4)
let animal2 = Animal(name: "Dog", numberOfLegs: 4)

print(animal1 === animal2)


let people = [Person(name: "Alice", age: 25), Person(name: "Bob", age: 30)]
let filtered = people.filter { $0.name == "Alice" }
print(filtered) // [Person(name: "Alice", age: 25)]

//let animal1 = Animal(name: "Dog", numberOfLegs: 4)
//let animal2 = animal1
//
//print(animal1 === animal2) // true, because they point to the same object



func sumArray(array: [Int]) -> Int {
    if array.count > 1 {
        var mutaArray = array
        let remove = mutaArray.removeFirst()
        return remove + sumArray(array: mutaArray)
    } else {
        return array[0]
    }
}

sumArray(array: [1,2,3,5,10])
