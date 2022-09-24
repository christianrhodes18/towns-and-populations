import UIKit

// FUNCTIONS
/*
 take an input set of integers and categorize them by whether or not each is a factor of the first
 parameter.
 */
func isFactor(of value: Int, in numbers: Set<Int>) -> (yes: Set<Int>, no: Set<Int>) {
    
}

/*
 apply the supplied function (or closure) to each value in the input set.
 Values for which the function (or closure) returns true will go
 into the yes set; and values for which the function or closure returns
 false will go into the no set
 */
func categorize(_ numbers: Set<Int>, using check: (Int) -> Bool) -> (yes: Set<Int>, no: Set<Int>) {
    
}

/*
 take a set of foods (in the form of strings) and sort them into healthy and unhealthy
 foods.
 */
func sortFood(in food: Set<String>) -> (healthy: Set<String>, unhealthy: Set<String>) {
    
}

/*
 take a function (or a closure) that returns true if a food is healthy
 and false if a food is unhealthy
 */
func sortFoodSmart(in food: Set<String>, using sortFunction: (String) -> Bool) -> (healthy: Set<String>, unhealthy: Set<String>) {
    
}

/*
 compare every element of the first array to every element
 of the second array, using the compare function. If the result
 of the comparison is true, the crossCompare function will append
 a tuple consisting of the corresponding elements to the array that it returns
 */
func crossCompare<T1, T2>(_ vals1: [T1], _ vals2: [T2], using compare: (T1, T2) -> Bool) -> [(T1, T2)] {
    
}


// TESTS
//let myFoods: Set = ["apples", "chocolate frosted sugar bombs", "cauliflower", "olives",
//"refined sugar", "sugar beets", "fritos", "sugar peas", "fried dough", "broccoli",
//"broccoli au sucre", "broccoli au lapin"]
//print("results, using simple discriminator:")
//var results = sortFood(in: myFoods)
//print("my healthy foods: \(results.healthy)")
//print("my unhealthy foods: \(results.unhealthy)")
//print()
//print("results, using smart discriminator")
//results = sortFoodSmart(in: myFoods, using: isHealthy)
//print("my healthy foods: \(results.healthy)")
//print("my unhealthy foods: \(results.unhealthy)")
//let wifeFoods: Set = ["salsa", "sugar snap peas", "eggs", "broccoli", "fried chicken"]
//print()
//print("Sarah’s groceries, using smart discriminator:")
//results = sortFoodSmart(in: wifeFoods, using: isHealthy)
//print("Sarah’s healthy foods: \(results.healthy)")
//print("Sarah’s unhealthy foods: \(results.unhealthy)")

// COMPARE TEST
//let L1 = [10, 5, 20]
//let L2 = [ [3, 5, 2], [1, 2, 3], [10, 0, 10] ]
//let r = crossCompare(L1, L2, using: f) // you must define the comparison function f
//print(r)
