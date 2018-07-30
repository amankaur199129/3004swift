//
//  DataHelper.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-30.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper{
    

var  List = [String : FlightClass]()
var EmployeeList = [Int : Employee]()

init(){
    self.loadFlightsData()
     self.loadEmployeeData()
}

func loadFlightsData(){
    List = [:]
    do{
        
    let Air_Canada = FlightClass(flight_id: "A111", flight_from: AirportList.Toronto_Pearson_Airport_Canada , flight_to: AirportList.Indira_Gandhi_International_Airport_India, flight_schedule_date: Date(), flight_airline_id: 11, flight_airplane_id: "A11", flight_pilot_id: "P21")
    List[Air_Canada.flight_id!] = Air_Canada
    
    let Jet_Airways = FlightClass(flight_id: "J222", flight_from: AirportList.Toronto_Pearson_Airport_Canada , flight_to: AirportList.Chatrapati_Shivaji_International_Airport_India, flight_schedule_date: Date(), flight_airline_id: 22, flight_airplane_id: "A22", flight_pilot_id: "P22")
    List[Jet_Airways.flight_id!] = Jet_Airways
    
    let Air_India = FlightClass(flight_id: "AI333", flight_from: AirportList.Rajiv_Gandhi_International_Airport_India, flight_to: AirportList.Toronto_Pearson_Airport_Canada, flight_schedule_date: Date(), flight_airline_id: 33, flight_airplane_id: "A33", flight_pilot_id: "P33")
    List[Air_India.flight_id!] = Air_India
    
    let Indigo = FlightClass(flight_id: "I444", flight_from: AirportList.Sri_Guru_Ram_Das_International_Airport_India, flight_to: AirportList.Frankfoot_Airport_Germany, flight_schedule_date: Date(), flight_airline_id: 44, flight_airplane_id: "A44", flight_pilot_id: "P44")
    List[Indigo.flight_id!] = Indigo
    
    let  Spice_Jet = FlightClass(flight_id: "S555", flight_from: AirportList.Indira_Gandhi_International_Airport_India, flight_to:.Frankfoot_Airport_Germany, flight_schedule_date:Date(), flight_airline_id: 55, flight_airplane_id: "A55", flight_pilot_id: "P55")
    List[Spice_Jet.flight_id!] = Spice_Jet
    
    } catch{
    print("Error: \(error)")
    }
}

func displayflights()
{
    print("Flight Details")
    Util.drawLine()
    print("\t Flight ID \t\t Flight From \t\t\t\t Flight To \t\t Flight Schedule Date \t\t Flight Airline ID \t\t FlightAirplane ID \t\t Flight Pilot ID ")
for (_, value) in self.List.sorted(by: { $0.key < $1.key })

{
        print("\t \(value.FlightID!) ------ \(value.FlightFrom) ------ \(value.FlightTo) ------ \(value.FlightScheduleDate ) ------ \(value.FlightAirlineID)-----\(value.FlightPilotID)")
    }
    Util.drawLine()
}

    func searchFlight(flight_id : String) -> FlightClass?{
        if List[flight_id] != nil{
            return List[flight_id]! as FlightClass
        }
        else{
            print("Sorry..The flight number you have entered is not available")
            return nil
        }
    }

    func loadEmployeeData(){
        let ram = Employee(employee_id: 1, employee_name: "ram", employee_email: "ram@gmail.com", employee_mobile: 123456 , employee_address: "toronto", employee_designation: "pilot", employee_SIN_number: "eee")
        EmployeeList[ram.EmployeeID!] = ram
        
        let sham = Employee(employee_id: 2, employee_name: "sham", employee_email: "sham@gmail.com", employee_mobile: 234567, employee_address: "vancouver", employee_designation: "pilot", employee_SIN_number: "www")
        EmployeeList[sham.EmployeeID!] = sham
        
        let sita = Employee(employee_id: 3, employee_name: "sita", employee_email: "sita@gmail.com", employee_mobile: 45678, employee_address: "kitchner", employee_designation: "pilot", employee_SIN_number: "dddd")
        EmployeeList[sita.EmployeeID!] = sita
    }
    func displayEmployees(){
        //closure
        for (_,Empl) in List.sorted(by: {$0.key < $1.key}){
            print("\(Empl.displayData())")
        }
        
        
    }


}

