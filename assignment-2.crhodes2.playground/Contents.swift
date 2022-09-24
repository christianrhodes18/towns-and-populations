import UIKit

// dictionary with key = state name; value = array of tuples (town, population)
var stateInfo = [ String : [(String, Int)]] ()

// FUNCTIONS
/*
 print each key and the entries for that key, as “name (population)”,
 with the entries separated by spaces.
 If the dictionary is empty, print "(empty)"
 */
func printDict(_ dict: [ String : [(String, Int)] ]) {
    var value_counter = 0
    for (key, values) in stateInfo {
        //separate each key to have it's own line
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
    //cancel out delimiter from values loop such that printDict() ends with new line character
    else {
        print("")
    }
}

/*
 If the key exists in the dictionary, this function will add a (town, population)
 entry at the end of the array of states for that key (duplicate town names are OK);
 otherwise, it will put a new key in the dictionary with
 an array containing the specified (town, population) pair.
 */
func addEntry(to key: String, town: String, population:Int,
              in dict: inout [ String : [(String, Int)] ]) {
    dict[key, default: []].append((town, population))
}

/*
 If the key exists in the dictionary and the specified town appears in the
 array for that key, then this function will remove the record for the specified
 town from the array for that key. If this results in an empty array for that key,
 then the function will remove the key from the dictionary. If there is no entry
 in the dictionary for the specified state, then print error: no entry for XXX in YYY.
 */
func removeEntry(from key: String, town: String, in dict: inout [ String : [(String, Int)] ]) {
    //check if state exists
    if let stateValues = dict[key] {
        //check if town exists
        var isTownFound = false
        //loop through array of tuples
        for tuple in stateValues {
            var i = 1
            //compare tuple[0] with town name
            if (tuple.0 == town) {
                //town exists
                isTownFound = true;
                
                //If state only has this one town, remove key (state) from dict
                if stateValues.count == 1 {
                    dict.removeValue(forKey: key)
                }
                else {
                    //remove town - which is an element of an array
                    dict[key, default: []].remove(at: i)
                }
            }
            i += 1
        }
        
        if !isTownFound {
            //town does not exist
            print("error: no entry for \(town) in \(key)")
        }
    }
    //no entry for given state, print error
    else {
        print("error: no entry for \(town) in \(key)")
    }
}

/*
 Return the number of entries in the array for the specified key.
 If the key is not in the dictionary, then return zero.
 */
func countEntries(for key: String, in dict: [ String : [(String, Int)]]) -> Int {
    var count = 0
    if let state = stateInfo[key] {
        //loop through the values in key
        for _ in state {
            //iterate count
            count += 1
        }
    } else {
        return 0;
    }
    return count;
}


// TEST CASES
printDict(stateInfo)
print("------------------------")
addEntry(to: "Vermont", town: "Burlington", population: 44743, in: &stateInfo)
addEntry(to: "Vermont", town: "Montpelier", population: 8074, in: &stateInfo)
addEntry(to: "Vermont", town: "Sutton", population: 913, in: &stateInfo)
addEntry(to: "Vermont", town: "Winooski", population: 7997, in: &stateInfo)
addEntry(to: "Vermont", town: "Springfield", population: 9062, in: &stateInfo)
addEntry(to: "Massachusetts", town: "Springfield", population: 155929, in: &stateInfo)
addEntry(to: "Massachusetts", town: "Boston", population: 675647, in: &stateInfo)
addEntry(to: "Massachusetts", town: "Falmouth", population: 32517, in: &stateInfo)
printDict(stateInfo)
print("------------------------")
removeEntry(from: "Vermont", town: "Montpelier", in: &stateInfo)
removeEntry(from: "Vermont", town: "Colchester", in: &stateInfo)
removeEntry(from: "Maine", town: "Portland", in: &stateInfo)
printDict(stateInfo)
print("------------------------")
print("# entries for Vermont = \(countEntries(for: "Vermont", in: stateInfo))")
print("# entries for Massachusetts = \(countEntries(for: "Massachusetts", in: stateInfo))")
print("# entries for Maine = \(countEntries(for: "Maine", in: stateInfo))")
addEntry(to: "Maine", town: "Orono", population: 11183, in: &stateInfo)
printDict(stateInfo)
print("------------------------")
removeEntry(from: "Maine", town: "Orono", in: &stateInfo)
printDict(stateInfo)
print("------------------------")
