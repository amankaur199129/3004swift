//
//  main.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var aman = Employee()
aman.registerEmployee()
print(aman.displayData())

var srujana = Passenger()
srujana.registerPassenger()
print(srujana.displayData())

//var choice = 1
//
//while choice != 2{
//    print("\n----what would you like to do !-----")
//    print("\t 1:  browse Flight")
//    print("\t 2: Exit")
//    print("-------------------")
//    print("Enter your choice please : ")
//    choice = (Int)(readLine()!)!
//}
//switch choice{
//case 1:
//
//default:
//    print("Please enter valid menu option")
//}
var airline = AirLine()
airline.registerAirLine()
print(airline.displayData())

