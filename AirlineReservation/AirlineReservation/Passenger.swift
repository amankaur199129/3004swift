//
//  Passenger.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Passenger
{
    private var passenger_id : Int?
    private var passenger_passport_no : String?
    private var passenger_name: String?
    private var passenger_email: String?
    private var passenger_mobile: Int?
    private var passenger_address: String?
    private var passenger_birthdate: String?
    
    
    init()
    {
        self.passenger_id = 0
        self.passenger_passport_no = ""
        self.passenger_name = ""
        self.passenger_email = ""
        self.passenger_mobile = 0
        self.passenger_address = ""
        self.passenger_birthdate = ""
        
    }
    init(passenger_id : Int,passenger_passport_no: String, passenger_name: String, passenger_email: String, passenger_mobile: Int, passenger_address: String, passenger_birthdate: String) {
        
        self.passenger_id = passenger_id
        self.passenger_passport_no = passenger_passport_no
        self.passenger_name = passenger_name
        self.passenger_email = passenger_email
        self.passenger_mobile = passenger_mobile
        self.passenger_address = passenger_address
        self.passenger_birthdate = passenger_birthdate
        
    }
    var PassengerID : Int?
    {
        get{return self.PassengerID}
        set{self.passenger_id = newValue}
    }
    var PassengerPassportNo : String?
    {
        get{return self.PassengerPassportNo}
        set{self.passenger_passport_no = newValue}
    }
    var PassengerName : String?
    {
        get{return self.PassengerName}
        set{self.passenger_name = newValue}
    }
    var PassengerEmail : String?
    {
        get{return self.PassengerEmail}
        set{self.passenger_email = newValue}
    }
    var PassengerMobile :Int?
    {
        get{ return self.PassengerMobile}
        set{self.passenger_mobile = newValue}
    }
    var PassengerAddress : String?
    {
        get{return self.PassengerAddress}
        set{self.passenger_address = newValue}
    }
    var  PassengerBirthDate : String?
    {
        get{return self.PassengerBirthDate}
        set{self.passenger_birthdate = newValue}
    }
    func displayData() ->   String{
        var returnData = ""
        if self.passenger_id != nil{
            returnData += "\n PassengerID : \(self.passenger_id ?? 0)"
        }
        
        if self.passenger_passport_no != nil{
            returnData += "\n PassengerPassportNo : \(self.passenger_passport_no ?? "Unknown")"
        }
        
        if self.passenger_name != nil{
            returnData += "\n PassengerName : \(self.passenger_name ?? "Unknown")"
        }
        if self.passenger_email != nil{
            returnData += "\n PassengerEmail : \(self.passenger_email ?? "unknown@gmail.com")"
        }
        
        if self.passenger_mobile != nil{
            returnData += "\n PassengerMobile : \(self.passenger_mobile ?? 0)"
        }
        
        if self.passenger_address != nil{
            returnData += "\n PassengerAddress : \(self.passenger_address ?? "Unknown")"
        }
        if self.passenger_birthdate != nil{
            returnData += "\n PassengerBirthDate : \(String(describing: self.passenger_birthdate ?? "Unknown"))"
        }
        return returnData
        }
       
    func registerPassenger(){
        print("Enter PassengerID : ")
        self.passenger_id = (Int)(readLine()!)
        print("Enter PassengerPassportNo : ")
        self.passenger_passport_no = (readLine()!)
        
        print("Enter passengerName : ")
        self.passenger_name = readLine()!
        
        print("Enter PassengerEmail : ")
        self.passenger_email = readLine()!
        print("Enter PassengerMobile : ")
        self.passenger_mobile = (Int)(readLine()!)
        print("Enter  PassengerAddress : ")
        self.passenger_address = readLine()!
        print("Enter passengerBirthDate : ")
        self.passenger_birthdate = readLine()!
        
    }
    }
