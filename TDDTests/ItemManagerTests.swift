//
//  ItemManagerTests.swift
//  TDD
//
//  Created by mohtab 10/24/16.
//  Copyright © 2016 Mohamed. All rights reserved.
//

import XCTest
@testable import TDD

class ItemManagerTests: XCTestCase {
    
    var sut : ItemManager! // We add here to to avoid repeating it.
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        sut = ItemManager()
    }
    
    func testToDoCount_InitiallyShouldBeZero () {
        XCTAssertEqual(sut.toDoCount, 0, "Initially toDo count should be 0")
        
    }
    
    func testDoneCount_InitiallyShouldBeZero () {
        XCTAssertEqual(sut.doneCount, 0, "Initially Done count should be 0")
    }
    
    func testToDoCount_AfterAddingOneItem_IsOne() {
        sut.addItem(ToDoItem(title: "Test title"))
        XCTAssertEqual(sut.toDoCount, 1, "To do count should be 1")
    }
    
    //yani un itemi ke ezaf kardim ro bayad estore karde bashe...
    func testItemAtIndex_shouldReturnPreviouslyAddedItem() {
        let item = ToDoItem(title: "test title")
        sut.addItem(item)
        
        let returnedItem = sut.itemAtIndex(0)
        
        XCTAssertEqual(item.title, returnedItem.title, "should be the same item")
    }
    
    // checking/clikcing and mutating them from toDo to Done!
    func testCheckingItem_ChangesCountOfToDoAndOfDoneItems () {
        sut.addItem(ToDoItem(title: "First Item"))
        sut.checkItemAtIndex(0)
        
        XCTAssertEqual(sut.toDoCount, 0, " ToDo count should be 0")
        XCTAssertEqual(sut.doneCount, 1, "done count should be 1")
        
        // so basically the way to check is to see if thee count has changed, or whatever parameter that catches the change or check to see if And also we check if
    }
    func testCheckingItem_removesItemFromToDoList () {
        let firstItem = ToDoItem(title: "First")
        let secondItem = ToDoItem(title: "second")
        
        // You could say this is a dependency injection of some sorts. That we are adding
        // *firstItem* and then removing it to see if our itemAtIndex is working as right
        sut.addItem(firstItem)
        sut.addItem(secondItem)
        
        sut.checkItemAtIndex(0)
        XCTAssertEqual(sut.itemAtIndex(0).title, secondItem.title)
    }
    func testDoneItemAtIndex_ShouldReturnPreviouslyCheckedItem() {
        let item = ToDoItem(title: "item")
        sut.addItem(item)
        sut.checkItemAtIndex(0)
        
        _ = sut.doneItem(atIndex: 0)
    }
    
    

}
