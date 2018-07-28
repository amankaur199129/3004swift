//
//  FlightClass.swift
//  AirLineReservation
//
//  Created by MacStudent on 2018-07-19.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Flight : IDisplay{
    func displayData() -> String {
    
    }
    
     var flight_id : String?
     var flight_from : AirportList
     var flight_to : AirportList
     var flight_schedule_date = Date()
     var flight_airline_id : Int?
     var flight_airplane_id : String?
     var flight_pilot_id : String?
    
    init() {
        self.flight_id = ""
        self.flight_from = AirportList.None
        self.flight_to = AirportList.None
        self.flight_schedule_date = Date()
        self.flight_airline_id = 0
        self.flight_airplane_id = ""
        self.flight_pilot_id = ""
        
        }
    init(flight_id: String, flight_from: AirportList, flight_to: AirportList, flight_schedule_date: Date, flight_airline_id: Int, flight_airplane_id: String, flight_pilot_id: String ) {
        
        self.flight_id = flight_id
        self.flight_from = flight_from
        self.flight_to = flight_to
        self.flight_schedule_date = Date()/*set{
         let dateCurrent = Date()
         print("Date 1 : \(dateCurrent)")
         
         let dateString = "12/01/2003"
         let dateFormatter = DateFormatter()
         dateFormatter.dateFormat = "MM/dd/yyyy"
         let dateFromString = dateFormatter.date(from: dateString)
         print("Date 2 : \(dateFromString!)")
         //self.flightDate = newValue
         }*/
        self.flight_airline_id = flight_airline_id
        self.flight_airplane_id = flight_airplane_id
        self.flight_pilot_id = flight_pilot_id
        
    }
    var FlightID : String? {
        get{ return self.flight_id}
        set{ self.flight_id = newValue}
    }
    var FlightFrom : AirportList
    {
        get{return self.flight_from}
        set{self.flight_from = newValue}
    }
    var FlightTo : AirportList{
        get{return self.flight_to}
        set{self.flight_to = newValue}
    }
    var  FlightScheduleDate : Date?{
        get{return self.flight_schedule_date}
        set{let dateCurrent = Date()
            print("Date 1 : \(dateCurrent)")
            
            let dateString = "12/01/2003"
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy"
            let dateFromString = dateFormatter.date(from: dateString)
            print("Date 2 : \(dateFromString!)")
            //self.flightDate = newValue
        }
        
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
    

//   func displayData() -> String{
//        var returnData = ""
//
//        if self.flight_id != nil {
//            returnData += "\n Flight ID : \(self.flight_id ?? "")"
//       }
//        if self.flight_from != nil {
//            returnData += "\n Flight From : \(self.flight_from ?? "")"
//        }
//       if self.FlightTo != nil {
//            returnData += "\n Flight To : \(self.flight_to ?? "")"
//        }
//        if self.flight_schedule_date != nil {
//            returnData += "\n Flight Schedule Date : \(self.flight_schedule_date ?? nil)"
//        }
//       if self.flight_airline_id != nil {
//            returnData += "\n Flight Airline ID : \(self.flight_airline_id ?? 0)"
//        }
//       if self.flight_airplane_id != nil {
//           returnData += "\n Flight Airplane ID: \(self.flight_airplane_id ?? "")"
//       }
//        if self.flight_pilot_id != nil {
//       }
//           returnData += "\n Flight Pilot ID: \(self.flight_pilot_id ?? "")"
//            return returnData
//    }
    
    func registerUser(){
        print("Enter Flight ID : ")
     self.flight_id = (readLine()!)
    print("Enter Flight From  : ")
        self.flight_from = AirportList.None
      print("Enter Flight To : ")
      self.flight_to = AirportList.None
       print("Enter Flight Schedule Date : ")
       self.flight_schedule_date = Date()
       print("Enter Airline ID : ")
      self.flight_airline_id = (Int)(readLine()!)
     print("Enter Airplane ID : ")
       self.flight_airplane_id = (readLine()!)
      print("Enter Pilot ID : ")
      self.flight_pilot_id = (readLine()!)
    
func displayData() -> String
{
    var returnData = ""
    returnData += "\n Flight From : \(self.flight_from)"
    returnData += "\n Flight To : \(self.flight_to)"
    returnData += "\n Airline Name : \(String(describing: self.flight_airline_id))"
    return returnData
    
}



func  display()
{
    print("depart From : ")
    for flightFrom in AirportList.allCases
    {
        print("Enter \(flightFrom.rawValue) for \(flightFrom)")
    }
    let choice = (Int)(readLine()!)
    self.flight_from = AirportList(rawValue: choice!)!
    
    
    
    
    print("Arrived to : ")
    for flightTo in AirportList.allCases
    {
        print("Enter \(flightTo.rawValue) for \(flightTo)")
    }
    let choice1 = (Int)(readLine()!)
    self.flight_to = AirportList(rawValue:choice1!)!
    
    
    
    
    print ("AirlineID: ")
    for AirlineID in AirLineType.allCases
    {
        print("Enter \(AirlineID.rawValue) for \(AirlineID)")
    }
   
    let choice2 = (Int)(readLine()!)
    self.flight_airline_id = AirLineType(rawValue: choice2!).map { $0.rawValue }
    
    print("Enter Date(in DD/MM/YYYY Format)")
    _ = readLine()
    
    
    
    
    
        }
    }

}




        
        
        
        
        
        
        


