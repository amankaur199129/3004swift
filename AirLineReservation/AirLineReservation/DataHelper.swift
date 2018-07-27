//
//  DataHelper.swift
//  AirLineReservation
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper{
    var  FlightList = [Int : Flight]()
    
    init(){
        self.loadflightData()
        
        }
    
    func loadflightData(){
    FlightList = [:]
    
        let AirCanada = Flight(flight_id: "A111", flight_from: AirportList.Toronto_Pearson_Airport_Canada , flight_to: AirportList.Indira_Gandhi_International_Airport_India, flight_schedule_date: "09/08/2018", flight_airline_id: 11, flight_airplane_id: "A11", flight_pilot_id: "P21")
        
        let Jet_Airways = Flight(flight_id: "J222", flight_from: AirportList.Toronto_Pearson_Airport_Canada , flight_to: AirportList.Chatrapati_Shivaji_International_Airport_India, flight_schedule_date: "08/082018" , flight_airline_id: 22, flight_airplane_id: "A22", flight_pilot_id: "P22")
    
        let Air_India = Flight(flight_id: "AI333", flight_from: AirportList.Rajiv_Gandhi_International_Airport_India, flight_to: AirportList.Toronto_Pearson_Airport_Canada, flight_schedule_date: "06/08/2018", flight_airline_id: 33, flight_airplane_id: "A33", flight_pilot_id: "P33")
        
        let Indigo = Flight(flight_id: "I444", flight_from: AirportList.Sri_Guru_Ram_Das_International_Airport_India, flight_to: AirportList.Frankfoot_Airport_Germany, flight_schedule_date: "05/08/2018", flight_airline_id: 44, flight_airplane_id: "A44", flight_pilot_id: "P44")
        
        
        let  Spice_Jet = Flight(flight_id: "S555", flight_from: AirportList.Indira_Gandhi_International_Airport_India, flight_to:.Frankfoot_Airport_Germany, flight_schedule_date: "04/08/2018", flight_airline_id: 55, flight_airplane_id: "A55", flight_pilot_id: "P55")
        
    }catch{
    print("Error: \(error)")
  
        
   
  
}
}
func displayFlight(){
    print("Flight Details")
    Util.drawLine()
    print("\t Flight ID \t\t Flight From \t\t\t\t Flight To \t\t Date \t\t Airline ID \t\t Airplane ID \t\t Pilot ID  ")
   for (_, value) in self .FlightList.sorted(by: {$0.key < $1.key })
   {
       Util.drawLine()
       print("\t \(value.FlightID!) ------ \(value.FlightFrom!) ------ \(value.FlightTo!) ------ \(value.Date!) ------ \(value.AirlineID!)---\(value.AirplaneID)---\(value.PilotID)")

  Util.drawLine()
    
}

func searchFlight(flight_id : Int) -> Flight?{
    if Flight[flight_id] != nil{
       return Flight[flight_id]! as Flight
}
else{
       print("Sorry..The number you have entered is not available")
    return nil
}
}
}
