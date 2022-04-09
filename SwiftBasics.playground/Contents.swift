import UIKit

//Type annotations:
var abc : String
abc = "hey motherfucker"
print(abc)

//“Constant and variable names can contain almost any character, including Unicode characters:”

let 🥲 = "fucked up!"
print(🥲)

//single line comment
/*
 multip line comment
 */

//“semicolons are required if you want to write multiple separate statements on a single line:”
let pi = 3.142 ; print(pi)

//“Swift provides signed and unsigned integers in 8, 16, 32, and 64 bit forms. These integers follow a naming convention similar to C, in that an 8-bit unsigned integer is of type UInt8, and a 32-bit signed integer is of type Int32.”

//“You can access the minimum and maximum values of each integer type with its min and max properties:”

let minValue = UInt8.min ; print(minValue)
let maxValue = UInt8.max ; print(maxValue)
let newVal = Int32.max ; print(newVal)

//“Unless you need to work with a specific size of integer, always use Int for integer values in your code. ”

//“Double represents a 64-bit floating-point number.
//Float represents a 32-bit floating-point number.”

/*
Numeric Literals
Integer literals can be written as:

A decimal number, with no prefix
A binary number, with a 0b prefix
An octal number, with a 0o prefix
A hexadecimal number, with a 0x prefix
 */

let a = 0b1101 //binary number
let b = 0o21 //octal number
let c = 0x11 //hexadecimal number

//“Both integers and floats can be padded with extra zeros and can contain underscores to help with readability. Neither type of formatting affects the underlying value of the literal:”

let oneMillion = 1_000_000; print(oneMillion)

let y: Int = 789
print(Float(y))

//“Type aliases are useful when you want to refer to an existing type by a name that’s contextually more appropriate, such as when working with data of a specific size from an external source:”

typealias calories = Int
//“Once you define a type alias, you can use the alias anywhere you might use the original name:”
var cal = calories.max
print(cal)

//tuple

let http404Error = (404,"Not Found")
print(http404Error)
//You can decompose a tuple’s contents into separate constants or variables, which you then access as usual:

let (statusCode, statusMessage) = http404Error
print(statusCode,statusMessage)

//“If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_) when you decompose the tuple:”

let (code, _) = http404Error
print(code)
//“Alternatively, access the individual element values in a tuple using index numbers starting at zero:”

print("Sorry!",http404Error.1)
print("There is an error \(http404Error.0)")

//“You can name the individual elements in a tuple when the tuple is defined:

//let http200Status = (statusCode: 200, description: "OK")”

var vehicalBrand = (Bike:"BMW", Car:"Tesla")
print(vehicalBrand.Bike)

let num = "123"
let converted = Int(num)

// “If an optional has a value, it’s considered to be “not equal to” nil:”

if converted != nil{
    print("there is some value")
}
else{
    print("No value")
}

//“Once you’re sure that the optional does contain a value, you can access its underlying value by adding an exclamation point (!) to the end of the optional’s name. The exclamation point effectively says, “I know that this optional definitely has a value; please use it.” This is known as forced unwrapping of the optional’s value:”
if converted != nil{
    print("there is some value \(converted!)")
}

var firstName: String = "Rahul "
var lastName: String = "Burman"
var middleName: String?
middleName = "Dev"

//print(middleName)
print("\(middleName!)") //forced unwrapping

//middleName = nil

if middleName != nil{
    print("\(firstName)\(middleName!) \(lastName)")
}
else{
    print("\(firstName) \(lastName)")
}

//optional binding is saving an optional to a variable or constant and then using that variable or constant directly instead of unwrapping an optional.
//“As the variable "middle" in the example below has been initialized with the value contained within the optional (middleName), so you don’t use the "!" suffix to access its value.”

if let middle = middleName{
    print("\(firstName)\(middle) \(lastName)") // "!" is omitted here.
}
else{
    print("\(firstName) \(lastName)")
}

//“You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas. If any of the values in the optional bindings are nil or any Boolean condition evaluates to false, the whole if statement’s condition is considered to be false. The following if statements are equivalent:

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100”

//“NOTE
//Constants and variables created with optional binding in an if statement are available only within the body of the if statement. In contrast, the constants and variables created with a guard statement are available in the lines of code that follow the guard statement, as described in Early Exit.”

//Implicity Unwrapped Optionals:

let possibleString: String? = "FREAKING OPTIONAL STRING." //optional string
let forcedString: String = possibleString! // requires an exclamation point for unwrapping the value
print(forcedString)

let assumedString: String! = "Fuck the string!" //implicit optional string
let implicitString: String = assumedString // no need for an exclamation point
print(implicitString)
//“An implicitly unwrapped optional is a normal optional behind the scenes, but can also be used like a non-optional value, without the need to unwrap the optional value each time it’s accessed. ”

//“You can think of an implicitly unwrapped optional as giving permission for the optional to be force-unwrapped if needed. When you use an implicitly unwrapped optional value, Swift first tries to use it as an ordinary optional value; if it can’t be used as an optional, Swift force-unwraps the value. In the code above, the optional value assumedString is force-unwrapped before assigning its value to implicitString because implicitString has an explicit, non-optional type of String. In code below, optionalString doesn’t have an explicit type so it’s an ordinary optional.”
let optionalString = assumedString
print(optionalString!)

//“Don’t use an implicitly unwrapped optional when there’s a possibility of a variable becoming nil at a later point. Always use a normal optional type if you need to check for a nil value during the lifetime of a variable.”
//“You can check whether an implicitly unwrapped optional is nil the same way you check a normal optional, using if statement and optional binding.




//“Error Handling
//You use error handling to respond to error conditions your program may encounter during execution.

//When a function encounters an error condition, it throws an error. That function’s caller can then catch the error and respond appropriately.

func canThrowAnError() throws {
    // this function may or may not throw an error
}

//A function indicates that it can throw an error by including the throws keyword in its declaration. When you call a function that can throw an error, you add the try keyword to the expression.
//Swift automatically propagates(transmit/pass) errors out of their current scope until they’re handled by a catch clause.”

