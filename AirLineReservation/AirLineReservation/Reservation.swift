//
//  Reservation.swift
//  AirLineReservation
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Reservation{
    private var reservation_id : Int?
    private var reservation_description: String?
    private var reservation_passenger: String?
    private var reservation_flight_id: Int?
    private var reservation_date: Date?
    private var reservation_seat_no: String?
    private var reservation_status: String?
    private var reservation_meal_type:String?
    
    
    init()
    {
        self.reservation_id = 0
        self.reservation_description = ""
        self.reservation_passenger = ""
        self.reservation_flight_id = 0
        self.reservation_date = nil
        self.reservation_seat_no = ""
        self.reservation_status = ""
        self.reservation_meal_type = ""
    }
    init (reservation_id: Int, reservation_description: String, reservation_passenger: String, reservation_flight_id: Int, reservation_date: Date, reservation_seat_no:String,reservation_status: String,reservation_meal_type:String)
    {
        self.reservation_id = reservation_id
        self.reservation_description = reservation_description
        self.reservation_passenger = reservation_passenger
        self.reservation_flight_id = reservation_flight_id
        self.reservation_date = reservation_date
        self.reservation_seat_no = reservation_seat_no
        self.reservation_status = reservation_status
        self.reservation_meal_type = reservation_meal_type
    }
    var ReservationID : Int?
    {
        get{return self.ReservationID }
        set{self.reservation_id = newValue}
    }
    var ReservationDescription : String?
    {
        get{return self.ReservationDescription }
        set{self.reservation_description = newValue}
    }
    var ReservationPassenger: String?
    {
        get{return self.ReservationPassenger }
        set{self.reservation_passenger = newValue}
    }
    
    var ReservationFlightID : Int?
    {
        get{return self.ReservationFlightID}
        set{self.reservation_flight_id = newValue}
    }
    var ReservationDate : Date?
    {
        get{return self.ReservationDate }
        set{self.reservation_date = newValue}
    }
    
    var ReservationSeatNo : String?
    {
        get{return self.ReservationSeatNo }
        set{self.reservation_seat_no = newValue}
    }
    
    var ReservationStatus : String?
    {
        get{return self.ReservationStatus }
        set{self.reservation_status = newValue}
    }
    var ReservationMealType : String?
    {
        get{return self.ReservationMealType }
        set{self.reservation_meal_type = newValue}
    }
    
    
}
