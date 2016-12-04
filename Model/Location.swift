//
//  Location.swift
//  TDD
//
//  Created by Faani Tabrizi Nezhaad, Mohammad (Contractor) on 10/24/16.
//  Copyright © 2016 Faani, Mohamed. All rights reserved.
//

import Foundation
import CoreLocation

struct Location : Equatable {
    let name : String
    let coordinate : CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}

func == (lhs : Location, rhs: Location) -> Bool {
    if lhs.name != rhs.name {
        return false 
    }
    
    if (lhs.coordinate?.longitude == rhs.coordinate?.longitude && lhs.coordinate?.latitude == rhs.coordinate?.latitude){
        return true}
    else {
        return false}
    
}

