//
//  main.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
print("Hello... life is beautiful")

var choice = 1
let dataHelper =  DataHelper()
var Flight = FlightClass()
var resrve = Reservation()
var pass = Passenger()
//var aman = Employee()
//aman.registerEmployee()
//print(aman.displayData())

//var srujana = Passenger()
//srujana.registerPassenger()
//print(srujana.displayData())

while choice != 5{
    print("\n----what would you like to do !-----")
    print("\t 1:  browse Flight")
    print("\t 2: Book a Flight")
    print("\t 3: Add Reservation")
    print("\t 4: Show Reservation")
    print("\t 5:  Update Reservation")
    print("\t 6: Cancel Reservation")
    print("\t 7: Exit")
    print("-------------------")
    print("Enter your choice please : ")
    choice = (Int)(readLine()!)!

switch choice{
case 1:
    dataHelper.displayflights()
case 2:
   resrve.addReservation()
    pass.registerPassenger()
    resrve.showReservation()
case 4:
    print(resrve.displayData())
    
case 5:
   exit(0)
default:
    print("Please enter valid menu option")
}
 //   let airline = AirLine()
//airline.registerAirLine()
    
//print(airline.displayData())

}




