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
        self.flight_schedule_date = ""
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
    var  : String?{
        get{return self.email}
        set{self.email = newValue}
    }
    var CreditCardInfo : String?{
        get{return self.creditCardInfo}
        set{self.creditCardInfo = newValue}
    }
    var ShippingInfo : String?{
        get{return self.shippingInfo}
        set{self.shippingInfo = newValue}
    }
}
