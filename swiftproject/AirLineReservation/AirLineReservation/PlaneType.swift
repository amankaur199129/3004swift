//
//  PlaneType.swift
//  AirLineReservation
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class PlaneType
{
    private var plane_type_id : String?
    private var plane_total_seats : Int?
    
    init()
    {
    self.plane_type_id = ""
        self.plane_total_seats = 0
    }
    init(plane_type_id : String,plane_total_seats : Int)
    {
      self.plane_type_id = plane_type_id
        self.plane_total_seats = plane_total_seats
    }
    var plane_Type_ID : String?
    {
        get{return self.plane_Type_ID}
        set{self.plane_type_id = newValue}
        
    }
    var Plane_Total_Seats : Int?
        
    {
        get{return self.Plane_Total_Seats}
        set{self.plane_total_seats = newValue}
}
}
