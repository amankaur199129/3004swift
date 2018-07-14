//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var coordinates = (10,20)

switch coordinates {
case (0,0):
    print("Start of canvas")
case(100,100):
    print("end of canvas")
   
case(10,_):
    print("y axis")

    print("outside the canvas")
default:
    print("Canvas unavailable")
}

var range = 1...100
print(range)
print(range.contains(45))
print(range.contains(453))
print("Lowerbound",range.lowerBound) // give(starting value)
print("upperbound",range.upperBound) //give(ending value)

for itr in 0..<5{
    print("itr : \(itr)")
    
}
var friends = ["simran","anu","Aman","prabhjeet"]
var length = friends.count

for itr in 0..<length{
    print("Friend : \(friends[itr])")
}
for frnd in friends[1...]{
    print("====\(frnd)")
}
for frnd in friends[...2]{
    print("@@@\(frnd)")
}

for char in "good😎"{
    print("character : \(char)")
}
var govinda = """
Answer to yesterday's question
what could have been insteed of being teacher?
you know about the answer.
Response::I don't know.
"""


govinda += "I would BE AN ASTRONAUT"
govinda.append("ohh Really !!🤩")
print(govinda)

var day = "Saturday"
//saturday_
print("startIndex : \(day[day.startIndex])")
//print (endIndex : \day[day.endIndex])")

print("second character : \(day[day.index(after:day.startIndex)])")

print("4th cahracter : \(day[day.index(day.startIndex, offsetBy: 3)])")

var index = day.index(of: "t")  ??
    day.endIndex
print ("char t : \(day[index])")

for idx in day.indices{          //all the indICES FROM one TO LAST
    print("\(day[idx])" , terminator: "_")
}
 print("test")

//for (idx,char) in day.enumerated(){
//print("Index : \(idx) Char : ")

 print(day.uppercased())
print(day.lowercased())

print(day.insert("!",at: day.endIndex))

day.insert(contentsOf: "No class please", at:day.endIndex)
print(day)

var idx1 = day.index(of: "!") ?? day.endIndex
day.remove(at: idx1)
print(day)

idx1 = day.index(of: "N") ?? day.endIndex
var idx2 = day.index(of:  "s") ?? day.endIndex
day.removeSubrange(idx1...idx2)
print(day)

//removeAll()             to remove
//print("day : ",day)

var value = String()
value = "too much"

if value.isEmpty{
    print("Value not available")
}else{
    print(value)
    
    
    }
    
    


