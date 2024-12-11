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






// EXERCISES
// 4.1
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

//4.2
func countNumbersIn(_ array: [Int]) -> Int {
    guard !array.isEmpty else {
        return 0
    }
    return 1 + countNumbersIn(array.dropLast())
}
countNumbersIn([1,3,4])

//4.3
func maxNumberInList(_ array: [Int]) -> Int {
    guard array.count > 1 else {
        return array.first ?? 0
    }
    let restMax = maxNumberInList(Array(array.dropFirst()))
    return array.first! > restMax ? array.first! : restMax
}

maxNumberInList([2,4,6,3,6,1,6,124,123])

//4.4
func binarySearch(_ array: [Int], target: Int, low: Int, high: Int) -> Int {

    if low > high {
        return -1
    }
    let mid = (low + high) / 2
    if array[mid] == target {
        return mid
    }
    if target < array[mid] {
        return binarySearch(array, target: target, low: low, high: mid - 1)
    } else {
        return binarySearch(array, target: target, low: mid + 1, high: high)
    }
}

//binarySearch(in: [1,2,3,4,6,7,8,10,12], for: 8)

let array = [1,2,3,4,6,7,8,10,12]
binarySearch(array, target: 8, low: 0, high: array.count - 1)


// 4.5 Printing each element 𝑂(𝑛)
// 4.6 Doubling each element 𝑂(𝑛)
// 4.7 Doubling the first element 𝑂(1)
// 4.8 Creating a multiplication table 𝑂(𝑛2)
