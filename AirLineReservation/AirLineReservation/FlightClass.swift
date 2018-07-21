//
//  FlightClass.swift
//  AirLineReservation
//
//  Created by MacStudent on 2018-07-19.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Flight{
    private var flight_id : String?
    private var flight_from : String?
    private var flight_to : String?
    private var flight_schedule_date : Date?
    private var flight_airline_id : Int?
    private var flight_airplane_id : String?
    private var flight_pilot_id : String?
    
    init() {
        self.flight_id = ""
        self.flight_from = ""
        self.flight_to = ""
        self.flight_schedule_date = nil
        self.flight_airline_id = 0
        self.flight_airplane_id = ""
        self.flight_pilot_id = ""
        
        }
    init(flight_id: String, flight_from: String, flight_to: String, flight_schedule_date: Date, flight_airline_id: Int, flight_airplane_id: String, flight_pilot_id: String ) {
        
        self.flight_id = flight_id
        self.flight_from = flight_from
        self.flight_to = flight_to
        self.flight_schedule_date = flight_schedule_date
        self.flight_airline_id = flight_airline_id
        self.flight_airplane_id = flight_airplane_id
        self.flight_pilot_id = flight_pilot_id
        
    }
    var FlightID : String? {
        get{ return self.flight_id}
        set{ self.flight_id = newValue}
    }
    var FlightFrom : String?{
        get{return self.flight_from}
        set{self.flight_from = newValue}
    }
    var FlightTo : String?{
        get{return self.flight_to}
        set{self.flight_to = newValue}
    }
    var  FlightScheduleDate : Date?{
        get{return self.flight_schedule_date}
        set{self.flight_schedule_date = newValue}
    }
    var FlightAirlineID : Int?{
        get{return self.FlightAirlineID}
        set{self.flight_airline_id = newValue}
    }
    var FlightAirPlaneID : String?{
        get{return self.flight_airplane_id}
        set{self.flight_airplane_id = newValue}
        
    }
    var FlightPilotID : String?{
        get{return self.flight_pilot_id}
        set{self.flight_pilot_id = newValue}
        
    }
    func displayData() -> String{
        var returnData = ""
        
        if self.flight_id != nil {
            returnData += "\n Flight ID : \(self.flight_id ?? "")"
        }
        
        if self.flight_from != nil {
            returnData += "\n Flight From : \(self.flight_from ?? "Unknown")"
        }
        if self.FlightTo != nil {
            returnData += "\n Flight To : \(self.flight_to ?? "Unknown")"
        }
        if self.flight_schedule_date != nil {
            returnData += "\n Flight Schedule Date : \(self.flight_schedule_date ?? nil)"
        }
        if self.flight_airline_id != nil {
            returnData += "\n Flight Airline ID : \(self.flight_airline_id ?? 0)"
        }
        if self.flight_airplane_id != nil {
            returnData += "\n Flight Airplane ID: \(self.flight_airplane_id ?? "")"
        }
        if self.flight_pilot_id != nil {
        }
            returnData += "\n Flight Pilot ID: \(self.flight_pilot_id ?? "")"
            return returnData
    }
    
    func registerUser(){
        print("Enter Flight ID : ")
        self.flight_id = (readLine()!)
        print("Enter Flight From  : ")
        self.flight_from = (readLine()!)
        print("Enter Flight To : ")
        self.flight_to = (readLine()!)
        print("Enter Flight Schedule Date : ")
    //    self.flight_schedule_date = (readLine()!)
        print("Enter Airline ID : ")
    //    self.flight_airline_id = (readLine()!)
        print("Enter Airplane ID : ")
        self.flight_airplane_id = (readLine()!)
        print("Enter Pilot ID : ")
        self.flight_pilot_id = (readLine()!)
        
        }


}


        
        
        
        
        
        
        


