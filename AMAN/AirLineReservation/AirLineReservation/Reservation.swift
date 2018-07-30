//
//  Reservation.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-30.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Reservation {
    private var reservation_id : String
    private var reservation_description: String?
    private var reservation_passenger_id: Int?
    private var reservation_flight_id: Int?
    private var reservation_date: Date?
    private var reservation_seat_no: String?
    private var reservation_status : ReservationList
    private var reservation_meal_type:String?
    var dataHelper = DataHelper()
    
    
    
    init(){
        self.reservation_id = ""
        self.reservation_description = "Unknown"
        self.reservation_passenger_id = 0
        self.reservation_flight_id = 0
        self.reservation_date = Date()
        self.reservation_seat_no =  "Unknown"
        self.reservation_status = ReservationList.None
        self.reservation_meal_type = "Unknown"
        
    }
    init(reservation_id : String, reservation_description: String,reservation_passenger_id: Int,reservation_flight_id: Int, reservation_date : Date, reservation_seat_no : String, reservation_status : ReservationList, reservation_meal_type : String)
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
        self.reservation_meal_type = reservation_meal_type
    }
    func displaydata() {
        var returnData = ""
        returnData += "\n Reservation ID : \(self.reservation_id)"
        returnData +=      "\n Reservation Description :\(self.reservation_description )"
        returnData += "\n Reservation Passenger ID : \(self.reservation_passenger_id )"
        returnData += "\n Reservation Flight ID : \(self.reservation_flight_id)"
        returnData += "\n Reservation Date : \(self.reservation_description  )"
        returnData += "\n Reservation Seat No : \(self.reservation_meal_type  )"
        returnData += "\n Reservation Status : \(self.reservation_date )"
        returnData += "\n Reservation Meal Type : \(self.reservation_meal_type)"
        
        //print(self.resStatus ?? false)
    }
    
    func addFlight(){
        dataHelper.displayflights()
        print("Please enter Flight ID to choose any flight from the list : ")
        let selectedflight_id : String = readLine()!
        
        if let selctedFlight = dataHelper.searchFlight(flight_id: selectedflight_id){
        self.reservation_id = selectedflight_id
        self.reservation_date = Date()
       
            self.reservation_status = ReservationList.Reserved
    }
        else
        {
            print("No Reservation..!")
        }
    
}
}


