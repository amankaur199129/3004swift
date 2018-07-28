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
    func displayData() ->   String{
    var returnData = ""
        if self.employee_id != nil{
            returnData += "\n EmployeeID : \(self.employee_id ?? 0)"
        }
        
        if self.employee_name != nil{
            returnData += "\n Employee Name : \(self.employee_name ?? "Unknown")"
        
        }
        if self.employee_email != nil{
            returnData += "\n Employee Email : \(self.employee_email ?? "unknown@gmail.com")"
        }
        
        if self.employee_mobile != nil{
            returnData += "\n Employee Mobile : \(self.employee_mobile ?? 0)"
        }
        
        if self.employee_address != nil{
            returnData += "\n Employee Address : \(self.employee_address ?? "Unknown")"
        }
            if self.employee_address != nil{
                returnData += "\n Employee Designation : \(self.employee_designation ?? "Unknown")"
                
        }
                if self.employee_SIN_number != nil{
                    returnData += "\n EmployeeSinNumber : \(self.employee_SIN_number ?? "Unknown")"
        }
            
         return returnData
    }
    func registerEmployee(){
        print("Enter Employee ID : ")
        self.employee_id = (Int)(readLine()!)
        print("Enter Employee Name : ")
        self.employee_name = readLine()!
        print("Enter Employee Email : ")
        self.employee_email = readLine()!
        print("Enter Employee Mobile : ")
        self.employee_mobile = (Int)(readLine()!)
        print("Enter Employee Address : ")
        self.employee_address = readLine()!
        print("Enter Employee Designation : ")
        self.employee_designation = readLine()!
        print("Enter Employee SIN Number : ")
        self.employee_SIN_number = readLine()!
      }
    
   }

