//
//  Employee.swift
//  AirLineReservation
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Employee
{
private var employee_id : Int?
private var employee_name: String?
private var employee_email: String?
private var employee_mobile: Int?
private var employee_address: String?
private var employee_designation: String?
private var employee_SIN_number: String?

  init()
{
   self.employee_id = 0
    self.employee_name = ""
    self.employee_email = ""
    self.employee_mobile = 0
    self.employee_address = ""
    self.employee_designation = ""
    self.employee_SIN_number = ""
    }
    init(employee_id : Int, employee_name: String, employee_email: String, employee_mobile: Int, employee_address: String, employee_designation: String,employee_SIN_number:String) {
        
        self.employee_id = employee_id
        self.employee_name = employee_name
        self.employee_email = employee_email
        self.employee_mobile = employee_mobile
        self.employee_address = employee_address
        self.employee_designation = employee_designation
        self.employee_SIN_number = employee_SIN_number
    }
    var EmployeeID : Int?
    {
        get{return self.EmployeeID}
        set{self.employee_id = newValue}
    }
    var EmployeeName : String?
    {
        get{return self.EmployeeName}
        set{self.employee_name = newValue}
    }
    var EmployeeEmail : String?
    {
        get{return self.EmployeeEmail}
        set{self.employee_email = newValue}
    }
    var EmployeeMobile : Int?
    {
        get{ return self.EmployeeMobile}
        set{self.employee_mobile = newValue}
    }
    var EmployeeAddress : String?
    {
        get{return self.EmployeeAddress}
        set{self.employee_address = newValue}
    }
    var  EmployeeDesignation : String?
    {
        get{return self.EmployeeDesignation}
        set{self.employee_designation = newValue}
    }
    var EmployeeSinNumber : String?
    {
        get{return self.EmployeeSinNumber}
        set{self.employee_SIN_number = newValue}

        
        
    }
    }


