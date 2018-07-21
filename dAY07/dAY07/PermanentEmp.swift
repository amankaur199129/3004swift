//
//  PermanentEmp.swift
//  dAY07
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
//inheriting employyee class
class PermanentEmp : Employee,INetPay{
    var weeks : Int?
    
    //get - only property
    var netPay : Double?{
        get{
            if self.weeks! > 3{
                return self.basicPay! - 100
            }else{
                return self.basicPay!
            }
        
        }
    }
    
    override init() {
       self.weeks = 0
       // self.netPay = 0.0
        super.init()
    }
    required init(empID: Int, empName: String, basicPay: Double, holiday: Int)
{
    self.weeks = holiday
        super.init(empID: empID, empName: empName, basicPay: basicPay)
    }
    override func display() {
        super.display()
        
        print("weeks : \(self.weeks ?? 0)")
        print("net pay : \(self.netPay ?? self.basicPay ?? 0.0)")
    }
    
}
