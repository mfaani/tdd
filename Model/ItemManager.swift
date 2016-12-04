//
//  ItemManager.swift
//  TDD
//
//  Created by Faani Tabrizi Nezhaad, Mohammad (Contractor) on 10/24/16.
//  Copyright © 2016 Faani, Mohamed. All rights reserved.
//

import Foundation

class ItemManager {
    
    var toDoCount : Int { return toDoItems.count}
//    var doneCount = 0
    var doneCount : Int {return doneItems.count}
    private var toDoItems = [ToDoItem]()
    private var doneItems = [ToDoItem]()
    
    func addItem (_ item : ToDoItem) {
//        toDoCount += 1
        toDoItems.append(item)
    }
    
    func itemAtIndex(_ index : Int) -> ToDoItem {
        
        return toDoItems[index]
    }
    
    func checkItemAtIndex(_ index : Int) {
       let item = toDoItems.remove(at: index)
        doneItems.append(item)
        
//       doneCount += 1
//       toDoCount -= 1
        
    }
    
    func doneItem (atIndex index : Int) -> ToDoItem {
        return doneItems[index]
    }
}
