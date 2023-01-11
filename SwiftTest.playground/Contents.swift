import UIKit

//var greeting = "Hello, playground"

print("Hello, playground")
print("The result of 5 + 3 = \(5+3)")

var a = 5
var b = 8
var c = 0

print("before a: \(a)")
print("before b: \(b)")

c = a
a = b
b = c

print("after a: \(a)")
print("after b: \(b)")

var numbers = [45, 73, 195, 53]

var computedNumbers = [
    numbers[0]*numbers[1],
    numbers[1]*numbers[2],
    numbers[2]*numbers[3],
    numbers[3]*numbers[0]]

print(computedNumbers)


let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

let password = alphabet.shuffled()[0...5].joined()
    
print(password)
