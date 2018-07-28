//
//  Enumeration.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
enum AirportList : Int, CaseIterable {
    
    case Indira_Gandhi_International_Airport_India = 1
   case Toronto_Pearson_Airport_Canada = 2
   case Chatrapati_Shivaji_International_Airport_India = 3
    case Rajiv_Gandhi_International_Airport_India = 4
    case Sri_Guru_Ram_Das_International_Airport_India = 5
   case Frankfoot_Airport_Germany = 6
    case None = 7
}
enum AirLineType : Int , CaseIterable
{
    case Jet_Airways = 1
    case Air_Canada = 2
    case Air_India = 3
    case Indigo = 4
    case Spice_Jet = 5
    case None = 6
}
//enum AirPlaneType : Int , CaseIterable{
   // case Boeing = 1
   // case Airbus = 2
  //  case None = 3
    


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
