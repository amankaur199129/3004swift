//
//  main.swift
//  dAY07
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var gurpreet = PermanentEmp(empID: 110, empName: "Gurpreet", basicPay: 40000.00, holiday: 4)
gurpreet.display()

var govinda = TempEmp(empID: 111, empName: "Govinda", basicPay: 10000.00, holiday: 24)
govinda.display()


print(12344.56)
print(12_344.55)
print(1_2344.56.asCurrency)

print("7 is prime number : \(7.isPrime)")
print("1 is prime number : \(1.isPrime)")
print("20 is prime number : \(20.isPrime)")

4.wish {
    print("Happy Birthday Navdeep")
}
print(1835567[2])

