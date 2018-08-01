//
//  Protocols.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
protocol IDisplay
{
    
    func displayData() -> String
}

public protocol CaseIterable {
    associatedtype AllCases: Collection where AllCases.Element == Self
    static var allCases: AllCases { get }
}
public protocol FlightUpdate {
    func addFlight() -> String
    func updateFlight() -> String
}


