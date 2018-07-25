//
//  Enumeration.swift
//  AirLineReservation
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

enum AirportList : Int, CaseIterable {
    
    case Chandigarh_Airport = 1
    case Indira_Gandhi_International_Airport = 2
    case Chatrapati_Shivaji_International_Airport = 3
    case Rajiv_Gandhi_International_Airport = 4
    case Sri_Guru_Ram_Das_International_Airport = 5
}


extension CaseIterable where Self: Hashable {
    static var allCases: [Self] {
        return [Self](AnySequence { () -> AnyIterator<Self> in
            var raw = 0
            var first: Self?
            return AnyIterator {
                let current = withUnsafeBytes(of: &raw) { $0.load(as: Self.self) }
                if raw == 0 {
                    first = current
                } else if current == first {
                    return nil
                }
                raw += 1
                return current
            }
        })
    }
}
