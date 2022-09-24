import UIKit

// FIRST
var nameByParkingSpace = [13: "Alice", 27: "Bob", 30: "Frank"];

nameByParkingSpace.updateValue("newName", forKey: 14)
for (key, value) in nameByParkingSpace {
    print("the name for space \(key) is \(value)")
}

// SECOND
var stateInfo = [ String : [(String, Int)]] ()

stateInfo.updateValue([("Sacremento", 1500)], forKey: "California")
stateInfo.updateValue([("Bangor", 1352)], forKey: "Maine")
stateInfo.updateValue([("Augusta", 341)], forKey: "Maine")

stateInfo["Maine", default: []].append(("Whatever", 50))

//var arrayFromDict = Array(stateInfo.values)
//print(arrayFromDict)
//for (key, values) in stateInfo {
//    values.append(("new", 500))
//    print(values)
//}

func printDict(_ dict: [ String : [(String, Int)] ]) {
    var value_counter = 0
    for (key, values) in stateInfo {
        //print(values)
        if (value_counter > 0) {
            print("")
        }
        print("\(key): ", terminator: "")
        for value in values {
            print("\(value.0) (\(value.1))", terminator: " ")
        }
        value_counter += 1
    }
    
    //dictionary is empty
    if (value_counter == 0) {
        print("(empty)")
    }
}

func addEntry(to key: String, town: String, population:Int,
              in dict: inout [ String : [(String, Int)] ]) {
    //dict.updateValue([].append((town, population)), forKey: key)
    //dict.updateValue([(town, population)], forKey: key)
    dict[key, default: []].append((town, population))
    //dict.updateValue(dict.values.append((town, population)), forKey: key)
    
    
}

addEntry(to: "Vermont", town: "Burlington", population: 44743, in: &stateInfo)
addEntry(to: "Vermont", town: "Montpelier", population: 8074, in: &stateInfo)
addEntry(to: "Vermont", town: "Sutton", population: 913, in: &stateInfo)
addEntry(to: "Vermont", town: "Winooski", population: 7997, in: &stateInfo)
addEntry(to: "Vermont", town: "Springfield", population: 9062, in: &stateInfo)

printDict(stateInfo)
