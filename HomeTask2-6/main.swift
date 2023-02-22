//
//  main.swift
//  HomeTask2-6
//
//  Created by Sonun on 21/2/23.
//

import Foundation

//№1
print("Введите предложение:")

let text = readLine()!
let result: ((String) -> Int) = { text in
    var letterCount = 0
    for symbol in text {
        if symbol.isLetter {
            letterCount += 1
        }
    }
    return letterCount
}
print("Количество букв в предложении: \(result(text))")

//№2

var convertIntoDollar: (Float) -> Float

convertIntoDollar = {$0 / 87.42}

var result2 = convertIntoDollar(10000)
print("Ваши cомы в долларах: \(result2) $.")


//№3
var nameArray: [String] = ["Talgarbek","Jhonny", "Ayluna", "Yan", "Sonunbubu"]

var reversedArray = nameArray.sorted(by: {$0.count < $1.count})
print(reversedArray)


//доп задание

var array = [10,9,8,4,3,6]

func myMap<T>(by array:[Int], _ transform: (Int) -> T) -> [T] {
    var newArray: [T] = []
    for element in array {
        newArray.append(transform(element))
    }
    return newArray
}

let square = myMap(by: array, {$0 * $0})
print(square)

let toString = myMap(by: array, {String($0)})
print(toString)
