/***
Important concepts:
1. sqrt() works on doubles only
2. How to check if a number is integer


*/



import Foundation


// My solution
func squareOrSquareRoot(_ input: [Int]) -> [Int] {
  var result = [Int]()
  for number in input {
    let squareRoot = sqrt(Double(number))
    let isInteger = floor(squareRoot) == squareRoot
    isInteger ? result.append(Int(squareRoot)) : result.append(number*number)
  }
  return result
}

let result = squareOrSquareRoot([4, 3, 9, 7, 2, 1])
print(result)

// Best Solution
func squareOrSquareRoot2(_ input: [Int]) -> [Int] {
  return input.map { i in
    let r = sqrt(Double(i))
    return r.truncatingRemainder(dividingBy: 1).isZero ? Int(r) : i*i
  }
}

let result2 = squareOrSquareRoot2([4, 3, 9, 7, 2, 1])
print(result2)