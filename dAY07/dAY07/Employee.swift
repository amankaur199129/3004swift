//
//  Employee.swift
//  dAY07
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Employee : IDisplay{
    var empID : Int?
    var empName : String?
    var basicPay : Double?
    
    init() {
        self.empID = 0
        self.empName = ""
        self.basicPay = 0.0
    }
    init(empID: Int, empName: String, basicPay: Double){
        self.empID = empID
        self.empName = empName
        self.basicPay = basicPay
    }
    func display(){
        print("Emp ID : \(self.empID ?? 0)")
        print("Emp Nmae : \(self.empName ?? "Unknown")")
        print("Emp Basic Pay : \(self.basicPay?.asCurrency ?? 0.0.asCurrency)")
    }
        //deinitialisation
        //garbage collector
        deinit {
            print("After resiging from job employee must handover all the work documents and portfolios assigned to the employee ")
        }
        
    }

