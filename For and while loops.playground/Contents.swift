import UIKit

var greeting = "Hello, playground"

//For Loops

var number:Int = 5
for index in 1...5 {
    print("\(index) * \(number) = \(index*number)")
}


var totalNumbers = 100
var sum:Int = 0
for number in 1...totalNumbers {
    sum+=number
}
print("The sum of first \(totalNumbers) is \(sum)")

//output: The sum of first 100 is 5050

var coreLang = ["Java","Swift","Javascript","ASP.net","SQL"]
//In swift Array is declared using var arrayName=[]
for index in 0..<coreLang.count {
    print("\(coreLang[index])")
}

var totalSum = 10
for val in 1...totalSum {
    if (val%2 == 0) {
        print("\(val)",terminator:",")
    }
}
print(" are all even numbers")

var member=true
var scratchCard=10
var count=0
for attempt in 1..<scratchCard {
    count+=1
    if member {
        if count>3 {
            print("You won \(scratchCard-2)$")
            count=0
            break
        }
        
    }else{
        if(count>8){
            print("You got \(scratchCard-8)$")
        }
        
    }
}


//While Loops

var prodNumber:Int = 6
var product:Int = 1
print("The product of first \(prodNumber) numbers is",terminator:" ")

while prodNumber>0 {
    product*=prodNumber
    prodNumber-=1
}
print(product)


var rangeValue:Int = 30
while rangeValue >= 1 {
    if rangeValue%3 == 0 {
        print("\(rangeValue)",terminator:" ")
    }
    rangeValue-=1
}



var number1 = 1
repeat {
    print(number1,terminator:" ")
    number1 += 1
} while number1 <= 10

var number2 = 3
repeat {
    print("Hello World!!")
    number2+=1
} while (number2 <= 2)

    
var a=0
var b=10

while (b-2 > 0){
    b-=2
    while (a+2 < 10){
        a+=2
        if a==b {
            continue
        }
        print("(\(a),\(b) )",terminator:"")
    }
}


var d = 100;
while( d > 50 )
{
    d = d - 30
}
print(d)
if( d > 70 ){
    d-=20;
    
}
else{
    d+=35;
}
print(d);


//Strings

var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

fact.count

fact += ", it has a better memory management"

dev.append(" by Apple")

author.lowercased()

author.uppercased()

author[author.startIndex]

author[author.index(before: author.endIndex)]

dev[dev.startIndex]

dev[dev.index(before: dev.endIndex)]

author[author.index(after: author.startIndex)]

author[author.index(author.startIndex,offsetBy: 5)]

author[author.index(author.endIndex,offsetBy: -5)]

fact[fact.index(fact.endIndex,offsetBy: -4)]

//Strings 02

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
         print("The first item in clothes is socks")
}else{
            print("socks is not the first item in clothes")
}


print(foodItems.split(separator: ","))

//Note: Split() returns the longest possible subsequences of the collection, in order, around elements equal to the given element.


if clothes.contains(",") {
    print("Clothes contains more than one item")
    }else{
                print("Clothes contain only one item")
}


 foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]


shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]


clothes.remove(at: clothes.firstIndex(of: "T")!)


clothes.remove(at: clothes.firstIndex(of: "-")!)


print("\(shoppingList), \(clothes)")
    
clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)

print(shoppingList[..<firstIndexOfR])


