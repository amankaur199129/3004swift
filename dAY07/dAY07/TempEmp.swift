//
//  TempEmp.swift
//  dAY07
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class TempEmp: Employee, INetPay{
    
    var netPay: Double?{
        get{
            
            if self.hours! > 20 {
                return self.basicPay! - 1500
            }else{
                return self.basicPay!
            }
        }
    }
    
    required init(empID: Int, empName: String, basicPay: Double, holiday: Int){
        
         super.init(empID: empID, empName: empName,basicPay: basicPay)
         self.hours = holiday
    }
    
      var hours : Int?
    
    override init() {
        self.hours = 0
        super.init()
    }
        override func display(){
            super.display()
            print("Holiday hours : \(self.hours ?? 0)")
            print("Net Pay : \(self.netPay?.asCurrency ?? self.basicPay?.asCurrency ?? 0.0.asCurrency)")
            
        }
    
}

