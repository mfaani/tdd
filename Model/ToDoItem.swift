//
//  ToDoItem.swift
//  TDD
//
//  Created by Faani Tabrizi Nezhaad, Mohammad (Contractor) on 10/24/16.
//  Copyright © 2016 Faani, Mohamed. All rights reserved.
//

import Foundation

struct ToDoItem :Equatable {
    let title :String
    let itemDescription: String?
    let timestamp: Double?
    let location : Location?
    init(title : String, itemDescription: String? = nil, timestamp : Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}

func ==(lhs: ToDoItem, rhs: ToDoItem) -> Bool {
    if lhs.location != rhs.location {
        return false
    }
    if lhs.timestamp != rhs.timestamp {
        return false
    }
    return true
}
