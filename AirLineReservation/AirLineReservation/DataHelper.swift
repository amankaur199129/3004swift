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
    
        let AirCanada = Flight(flight_id: "A102", flight_from: AirportList.Frankfoot_Airport_Germany, flight_to: AirportList.Indira_Gandhi_International_Airport_India, flight_schedule_date: "09/12/2019", flight_airline_id: 21, flight_airplane_id: "A21", flight_pilot_id: "P21")
        let AirFrance = Flight(flight_id: <#T##String#>, flight_from: <#T##AirportList#>, flight_to: <#T##AirportList#>, flight_schedule_date: <#T##String#>, flight_airline_id: <#T##Int#>, flight_airplane_id: <#T##String#>, flight_pilot_id: <#T##String#>)
    
      //  let Jet_Airways = Flight( flight_from: "Toronto_Pearson_Airport_Canada" , flight_to: "Indira_Gandhi_International_Airport_India", flight_schedule_date : 3/8/2018,   flight_airline_id: "AA" ,flight_airplane_id: "Boeing",flight_pilot_id: AirportList.AllCases)
     //   FlightList[(Jet_Airways.flight_id!)] = Jet_Airways
        
        
   //     let Air_Canada = Flight(flight_id: 12, flight_from: "Chatrapati_Shivaji_International_Airport_India" , flight_to: "Frankfoot_Airport_Germany", flight_schedule_date : 4/8/2018,   flight_airline_id: "BB", AirPlaneType: "Airbus" )
         AirportList[(Air_Canada.flight_id!)] = Air_Canada
        
   //     let Air_India = try Flight(flight_id: 13, flight_from: "Sri_Guru_Ram_Das_International_Airport_India" , flight_to: "Toronto_Pearson_Airport_Canada", flight_schedule_date : 3/8/2018,   flight_airline_id: "CC", AirPlaneType: "Boeing")
         AirportList[(Air_India.flight_id!)] = Air_India
        
    //    let Indigo = try Flight(flight_id: 14, flight_from: "Frankfoot_Airport_Germany" , flight_to: "Indira_Gandhi_International_Airport_India", flight_schedule_date : 3/8/2018,  flight_airline_id: "DD", AirPlaneType: "Boeing")
         AirportList[( Indigo.flight_id!)] = Indigo
        
  //      let  Spice_Jet = try Flight(flight_id: 15, flight_from: "Indira_Gandhi_International_Airport_India," , flight_to: ",Rajiv_Gandhi_International_Airport_India", flight_schedule_date : 3/8/2018,   flight_airline_id: "EE", AirPlaneType: "Airbus")
         AirportList[(Spice_Jet.flight_id!)] = Spice_Jet
}
}
func display(){
    print("Product Details")
    Util.drawLine()
    print("\t ID \t\t Name \t\t\t\t Manufecturer \t\t Category \t\t Unit Price")
    for (_, value) in self.ProductList.sorted(by: { $0.key < $1.key }){
        Util.drawLine()
        print("\t \(value.ProductID!) ------ \(value.ProductName!) ------ \(value.Manufecturer!) ------ \(value.Category!) ------ \(value.UnitPrice!)")
    }
    Util.drawLine()
}

func searchProduct(productID : Int) -> Product?{
    if ProductList[productID] != nil{
        return ProductList[productID]! as Product
    }
    else{
        print("Sorry..The product number you have entered is not available")
        return nil
    }
}
