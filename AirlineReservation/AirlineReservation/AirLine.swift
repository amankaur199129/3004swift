//
//  AirLine.swift
//  AirlineReservation/Users/macstudent/Desktop/AirlineReservation/AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class AirLine
{
    private var airlines_id : Int?
    private var airlines_descreption : String?
    private var airlines_type : String?
    
    func displayData() -> String {
        var returnData = ""
        returnData += "\n AirLineID : \(self.airlines_id  ?? 0)"
        returnData += "\n AirLineDescription  : \(self.airlines_descreption ?? "")"
        returnData += "\n AirlineType : \(self.airlines_type ?? "")"
        return returnData
    }
    
    init()
    {
        self.airlines_id = 0
        self.airlines_descreption = ""
        self.airlines_type = ""
    }
    init(airlines_id : Int, airlines_descreption : String, airlines_type : String)
    {
        self.airlines_id = airlines_id
        self.airlines_descreption = airlines_descreption
        self.airlines_type = airlines_type
    }
    var AirlineID : Int?
    {
        get{return self.AirlineID}
        set{self.airlines_id = newValue}
        
    }
    var AirlineDescreption : String?
    {
        get{return self.AirlineDescreption}
        set{self.airlines_descreption = newValue}
    }
    var AirlineType : String?
    {
        get{return self.AirlineType}
        set{self.airlines_type = newValue}
    }
    
    func registerAirLine(){
        print("Enter AirlineID : ")
        self.airlines_id = (Int)(readLine()!)
        print("AirlinesDescription : ")
        self.airlines_descreption = readLine()!
        print("Enter AirlineType: ")
        self.airlines_type = readLine()!
    }
}



