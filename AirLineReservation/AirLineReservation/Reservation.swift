//
//  Reservation.swift
//  AirLineReservation
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation



class Reservation {
    private var reservation_id : Int?
    private var reservation_description: String?
    private var reservation_passenger_id: Int?
    private var reservation_flight_id: Int?
    private var reservation_date: Date?
    private var reservation_seat_no: String?
    private var reservation_status: Bool?
    private var reservation_meal_type:String?
    
   
        
    }
init(){
    self.reservation_id = 0
    self.reservation_description = "Unknown"
    self.reservation_passenger_id = 0
    self.reservation_flight_id = 0
    self.reservation_date = Date()
    self.reservation_seat_no =  "Unknown"
    self.reservation_status = false
    self.reservation_meal_type = "Unknown"
    
}
init(reservation_id : Int, reservation_description: Int,reservation_passenger_id: Int,reservation_flight_id: String, reservation_date : Date, reservation_seat_no : String, reservation_status : Bool, reservation_meal_type : String?
    ){
    self.reservation_id = reservation_id
    self.reservation_description = reservation_description
    self.reservation_Passenger_id = reservation_passenger_id
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
    self.reservation_status = reservation_status
    self.reservation_meal_type = reservation_meal_type
}
func display() {
    print(self.reservation_id ?? 0)
    print(self.reservation_description ?? "In Progress")
    print(self.resPassengerID ?? 0)
    print(self.resFlightID ?? 0)
    print(self.reservationDescription ?? "In progress")
    print(self.reservationMealType ?? "Veg")
    print(self.reservationDate ?? Date())
    print(self.resSeatNo ?? "1A")
    
    print(self.resStatus ?? false)
}
}



    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

