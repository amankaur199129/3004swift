//
//  AirlineEnquiry.swift
//  AirLineReservation
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class AirlineEnquiry
{

    private var enquiry_id : Int?
    private var enquiry_type: String?
    private var enquiry_title: String?
    private var enquiry_description: String?
    private var enquiry_date: Date?

init()
{
    self.enquiry_id = 0
    self.enquiry_type = ""
    self.enquiry_title = ""
    self.enquiry_description = ""
    self.enquiry_date = nil
}
    init (enquiry_id: Int,enquiry_type: String, enquiry_title: String, enquiry_description: String, enquiry_date: Date)
    {
        self.enquiry_id = enquiry_id
        self.enquiry_type = enquiry_type
        self.enquiry_title = enquiry_title
        self.enquiry_description = enquiry_description
        self.enquiry_date = enquiry_date
    }
    var EnquiryID : Int?
    {
        get{return self.EnquiryID }
        set{self.enquiry_id = newValue}
    }
    var EnquiryType  : String?
    {
    get{return self.EnquiryType }
    set{self.enquiry_type = newValue}
    }
    var EnquiryTitle : String?
    {
        get{return self.EnquiryTitle }
        set{self.enquiry_title = newValue}
    }
    
    var EnquiryDescription  : String?
    {
        get{return self.EnquiryDescription }
        set{self.enquiry_description = newValue}
    }
    
    var EnquiryDate  : Date?
    {
        get{return self.EnquiryDate }
        set{self.enquiry_date = newValue}
    }
    
    
    
    
}
