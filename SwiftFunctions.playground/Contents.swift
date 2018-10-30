import UIKit


//FUNCTIONS

//1.Functions Without Parameters
func simple() {
    print("I am a simple function")
}

//2.Function with parameters
func printName(first:String, last:String) {
    print("\(first) \(last)")
}

//3.Function with a return type
func getFullName(first:String, last:String) -> String {
    return "\(first) \(last)"
}

//4. Function that return a tuple
func operations(n1: Int, n2:Int)  -> (Int,Int,Int,Int) {
    return (n1+n2,n1-n2,n1*n2,n1/n2)
}

//5. Function Argument Labels and Parameter Names
func argumentLabels(number1 n1:Int, number2 n2:Int) -> Int {
    return n1+n2
}

//6. Omitting Argument Labels
func omitArgumentLabels(_ n1: Int, _ n2:Int) -> Int{
    return n1+n2
}

//7. Default Parameter Values
func sum(n1: Int = 1, n2: Int = 1) -> Int{
    return n1+n2
}

//8. Variadic Parameters
func variadicFunction(numbers: Int...) -> Int {
    var sum=0
    for num in numbers {
        sum+=num
    }
    return sum
}

//9. In-Out Parameters
func inoutfunction(num1: inout Int, num2: inout Int) {
    num1+=1
    num2+=1
}

//10. Function types
func add(num1: Int, num2: Int) -> Int{
    return num1+num2
}

func sub(num1: Int, num2: Int) -> Int {
    return num1-num2
}

func functionType() {
    let f1:(Int,Int) -> (Int) = add(num1:num2:)
    let f2:(Int,Int) -> (Int) = sub(num1:num2:)
    let sum = f1(1,1)
    let sub = f2(1,1)
    print("sum: \(sum) sub: \(sub)")
}

//11. Function type as parameter
func functionTypeAsParameter(sum: (Int, Int) -> Int, num1: Int, num2: Int) {
    print(sum(num1,num2))
}

//12. Function type as return type
func functionAsReturnType(sum: Bool) -> (Int, Int) -> Int{
    return sum ? add : sub
}

//13. Nested type
func nestedFunction() {
    func sum(number1: Int, number2: Int) -> Int{
        return number1+number2
    }
    
    func sub(number1: Int, number2: Int) -> Int {
        return number1-number2
    }
    
    var r1 = sum(number1: 1, number2: 1)
    var r2 = sub(number1: 1, number2: 1)
    print("Sum : \(r1) Sub: \(r2)")
}


//1
simple()

//2
printName(first: "Steve", last: "Lee")

//3
var fullname = getFullName(first: "Saumya", last: "Lahera")

//4
var answers = operations(n1: 1, n2: 1)

//5
var sum1 = argumentLabels(number1: 1, number2: 1)

//6
var sum2 = omitArgumentLabels(1, 1)

//7
var sum3 = sum()

//8
var sum4 = variadicFunction(numbers: 1,2,3)

//9
var num1 = 0
var num2 = 0
inoutfunction(num1: &num1, num2: &num2)

//10
functionType()

//11
functionTypeAsParameter(sum: sum(n1:n2:), num1: 1, num2: 1)

//12
var functiontype = functionAsReturnType(sum: true)
var sum5 = functiontype(1,1)

//13
nestedFunction()

