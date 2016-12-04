//
//  ToDoItemTests.swift
//  TDD
//
//  Created by Faani Tabrizi Nezhaad, Mohammad (Contractor) on 10/24/16.
//  Copyright © 2016 Faani, Mohamed. All rights reserved.
//

import XCTest
import CoreLocation
@testable import TDD

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_ShouldSetTitle(){
        let item = ToDoItem(title: "Test Title") // What the HELL are we setting here!?
        XCTAssertEqual(item.title, "Test Title", "Initializer should set the item Title")
    }
    func testInit_ShouldTakeTitleAndDescriptionAndTimeStamp(){
        let item = ToDoItem(title: "Test Title", itemDescription:"Test Description", timestamp: 0.0)
    }
    func testInit_ShouldTakeTitleAndDescriptionAndTimeStampAndLocation(){
        let location = Location(name: "Location test")
        let item = ToDoItem(title: "Test Title", itemDescription : " Test Description", timestamp: 0.0 , location : location)
        
        XCTAssertEqual(location.name, item.location?.name, "This was a stupid test that failed, testing if the init is working !?!")
    }
    
    func testEqualItems_ShouldBeEqual() {
        let firstItem = ToDoItem(title: "First")
        let secondItem = ToDoItem(title: "First")
        
        XCTAssertEqual(firstItem, secondItem)
    }
    

//    func testWhenLocationDiffers_SHouldNotBeEqual() {
//        
//                let firstItem = ToDoItem(title: "first title", itemDescription: "first Description", timestamp: 0.0, location: Location(name: "Home"))
//                let secondItem = ToDoItem(title: "first title", itemDescription: "first Description", timestamp: 0.0, location: Location(name: "Office"))
//        
//                XCTAssertNotEqual(firstItem, secondItem)
//        
//    }
    
    func testWhenOneLocationIsNilAndTheOtherIsnt_ShouldBeNotEqual() {
        var firstItem = ToDoItem(title: "First title",
                                 itemDescription: "First description",
                                 timestamp: 0.0,
                                 location: nil)
        var secondItem = ToDoItem(title: "First title",
                                  itemDescription: "First description",
                                  timestamp: 0.0,
                                  location: Location(name: "Office"))
        XCTAssertNotEqual(firstItem, secondItem)
        
        firstItem = ToDoItem(title: "First title",
                             itemDescription: "First description",
                             timestamp: 0.0,
                             location: Location(name: "Home"))
        secondItem = ToDoItem(title: "First title",
                              itemDescription: "First description",
                              timestamp: 0.0,
                              location: nil)
        XCTAssertNotEqual(firstItem, secondItem)
    }
    
    func testWhenTimestampDifferes_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First title",
                                 itemDescription: "First description",
                                 timestamp: 1.0)
        let secondItem = ToDoItem(title: "First title",
                                  itemDescription: "First description",
                                  timestamp: 0.0)
        XCTAssertNotEqual(firstItem, secondItem)
    }
    
    
    // WARNING
    //read until page 73 of book 88 of pdf
}
