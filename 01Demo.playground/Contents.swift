import UIKit

var greeting = "Hello, playground"

print("Hii",10,12.25)
print(greeting)

//string interpolation
// \(variableName)
var language = "Swift"
print("I dont like \(language)")

var age = 23
print("You are \(age) years old and in another \(age) years, you will be \(age * 2)")

var name = "Matt"
print("Hello, \(name)!")

var year = "Senior"
print("Hello \(name) you are \(age) years old and a \(year) in college.")

print("""
Hello
World!
""")

// \r carriage return
print("Hello All,\rWelcome to Swift programming")

// let is constant
// explicitly declaring the data type
let  welcomeMessage : String = "Hello!"
   print(welcomeMessage , "All")

print("Welcome to Swift Programming")
print("Fall 2021")
print("*************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Fall 2021")


var grade = 96
print("Hello \(name) your grade is \(grade)% in", terminator: " " )
print("Fall 2021")


print("The list of numbers are ", terminator: ":" )
print(1,2,3,4,5,6)
print("The new pattern is", terminator: " ")
print(1,2,3,4,5,6, separator: "-")

//declaration of variables
var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)

let pi = 3.14
print(pi)
print()
// Tuples
var httpError  = (errorCode : 404  , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )
print()
var name1 = ("John","Smith")
var fName = name1.0
var lName = name1.1
print(fName , terminator : ",")
print(lName)

print()

var origin = (x : 0 , y : 0)
var point = origin
print(point)

print()
let city = (name : "Maryville" , population : 11,000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

print()
let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")

print()
var cricketKit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)

