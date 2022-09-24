import UIKit

// FIZZ BUZZ
for i in 1...50 {
    //fizz buzz
    if (i % 3 == 0 && i % 5 == 0) {
        print("Fizz Buzz")
    }
    //fizz
    else if (i % 3 == 0) {
        print("Fizz")
    }
    //buzz
    else if (i % 5 == 0) {
        print("Buzz")
    }
    else {
        print(i)
    }
}

// GEOMETRIC PATTERNS
let height = 5
let totalRows = (height * 2) - 1

let cross = "X"
let dash = "-"
var numDashes = -1

//TOP HALF
for row in 0...height {
    //appropriate intitial spacing on each line
    for _ in 0...height-row {
        print(terminator: " ")
    }
    //place cross
    print(cross, terminator: "")
    
    //place dashes
    if (row != 0) {
        for _ in 1...numDashes {
            print(dash, terminator: "")
        }
    }
    //place ending cross
    if (row == 0) {
        print("")
    }
    else {
        print(cross)
    }
    numDashes += 2
}

//BOTTOM HALF
numDashes = numDashes - 4

for row in 0...height-1 {
    print(terminator: " ")
    for _ in 0...row {
        print(terminator: " ")
    }
    //place cross
    print(cross, terminator: "")
    //place dashes
    if (numDashes > 0) {
        for _ in 0...numDashes-1 {
            print(dash, terminator: "")
        }
    }
    //place ending cross
    if (row < height - 1) {
        print(cross)
    }
    else {
        print("")
    }
    numDashes -= 2
}


// CHESSBOARD
let size = 8

for row in 1...size {
    //print top border
    if (row == 1) {
        print("+-+-+-+-+-+-+-+-+")
    }
    
    //print alternating row for chess pieces
    if (row % 2 == 0) {
        print("|X| |X| |X| |X| |")
    }
    else {
        print("| |X| |X| |X| |X|")
    }
    
    //print bottom border
    print("+-+-+-+-+-+-+-+-+")
}
