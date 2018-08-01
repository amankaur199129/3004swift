//
//  Reservation.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-30.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
typealias reservationD = (flight_id: String, flight: FlightClass)

class Reservation: Passenger{
     var reservation_id : String?
     var reservation_description: String?
     var reservation_passenger_id: Int?
    var reservation_flight_id: Int?
     var reservation_date: Date?
     var reservation_seat_no: String?
     var reservation_status : ReservationList
     var reservation_meal_type: MealTypeList
     var reservation_flight: [reservationD]
    var dataHelper = DataHelper()
    
    override init(){
        self.reservation_id = ""
        self.reservation_description = "Unknown"
        self.reservation_passenger_id = 0
        self.reservation_flight_id = 0
        self.reservation_date = Date()
        self.reservation_seat_no =  "Unknown"
        self.reservation_status = ReservationList.None
        self.reservation_meal_type = MealTypeList.None
        self.reservation_flight = []
        super.init()
    }
    
    
    init(reservation_id : String, reservation_description: String,reservation_passenger_id: Int,reservation_flight_id: Int, reservation_date : Date, reservation_seat_no : String, reservation_status : ReservationList, reservation_meal_type : MealTypeList, reservation_flight:  reservationD)
    {
        self.reservation_id = reservation_id
        self.reservation_description = reservation_description
        self.reservation_passenger_id = reservation_passenger_id
        self.reservation_flight_id = reservation_flight_id
        self.reservation_date = Date()
        
        /* let dateCurrent = Date()
         print("Date 1 : \(dateCurrent)")
         
         let dateString = "12/01/2003"
         let dateFormatter = DateFormatter()
         dateFormatter.dateFormat = "MM/dd/yyyy"
         let dateFromString = dateFormatter.date(from: dateString)
         print("Date 2 : \(dateFromString!)")
         //self.flightDate = newValue
         */
        self.reservation_seat_no = reservation_seat_no
        self.reservation_status = ReservationList.None
        self.reservation_meal_type = MealTypeList.None
        

    
    var ReservationID : String? {
        get{ return self.reservation_id}
        set{ self.reservation_id = newValue}
    }
    var ReservationDescription : String?
    {
        get{return self.reservation_description}
        set{self.reservation_description = newValue}
    }
    var ReservationPassengerID : Int?{
        get{return self.reservation_passenger_id}
        set{self.reservation_passenger_id = newValue}
    }
    var   ReservationFlightID :Int? {
        get{return self.reservation_flight_id}
        set{self.reservation_flight_id = newValue}
    
    }
    var ReservationDate: Date?{
        get{return self.reservation_date}
        set{self.reservation_date = newValue }
    }
    var ReservationSeatNo: String?{
    get{return self.reservation_seat_no}
        set{self.reservation_seat_no = newValue}
    }
    var ReservationStatus: ReservationList?{
        get{ return self.reservation_status}
        set{ self.reservation_status = newValue as! ReservationList}
    }
        var ReservationMealType: MealTypeList?{
        get{return self.reservation_meal_type}
            set{self.reservation_meal_type = newValue as! MealTypeList}
    }
   
//computed property
//var reservationAmount: Double?{
  //  get{
 //       var amount = 0.0
 //       if !self.reservation_flight.isEmpty{
 //           for (_, flight) in self.reservation_flight{
 //               amount += flight.Price! * (Double)
  //          }
  //      }
 //       return amount
   // }
   // }
       
    
    
    
    
    func displaydata() -> String {
        var returnData = ""
        returnData += "\n Reservation ID : \(self.reservation_id)"
        returnData +=      "\n Reservation Description :\(self.reservation_description )"
        returnData += "\n Reservation Passenger ID : \(self.reservation_passenger_id )"
        returnData += "\n Reservation Flight ID : \(self.reservation_flight_id)"
        returnData += "\n Reservation Date : \(self.reservation_description  )"
        returnData += "\n Reservation Seat No : \(self.reservation_meal_type  )"
        returnData += "\n Reservation Status : \(self.reservation_date )"
        returnData += "\n Reservation Meal Type : \(self.reservation_meal_type)"
        returnData += "\n reservation_flight : \(self.reservation_flight)"
        return returnData
        //print(self.resStatus ?? false)
    }
    func addReservation(){
        dataHelper.displayReservation()
        print("Please enter Flight ID to choose any Flight from the list : ")
        let selectedflight_id : String = readLine()!
        
        if let selectedFlight = dataHelper.flights(flight_id: selectedflight_id){
            self.reservation_id = selectedflight_id
            self.reservation_date = Date()
            
            print("How many Tickets do you want ? : ")
            let qty : Int = (Int)(readLine()!) ?? 1
            
            self.reservation_flight = [(flight_id: selectedflight_id, Flight: selectedflight_id)] as! [reservationD]
            self.reservation_status = ReservationList.Reserved
            
        }else{
            print("Sorry...The reservation you entered is unavailable")
        }
    
    func addFlight(){
        dataHelper.loadFlightsData()()
        print("Please enter Flight ID to choose any flight from the list : ")
        let selectedflight_id : String = readLine()!
        
        if let selectedFlight = dataHelper.searchFlight(flight_id: selectedflight_id){
        self.reservation_id = selectedflight_id
        self.reservation_date = Date()
       
            self.reservation_status = ReservationList.Reserved
    }
        else
        {
            print("No Reservation..!")
        }
   func mealdisplay() -> String
  {
    print("Meal Type : ")
        for MealType in MealTypeList.allCases
       {
            print("Enter \(MealType.rawValue)for \(MealType)")
            }
           let Choice = (Int)(readLine()!)!
    self.reservation_meal_type = MealTypeList(rawValue: Choice)!


       }
}
}

}

}


