//
//  HalfTunesFakeTests.swift
//  HalfTunesFakeTests
//
//  Created by Scott OToole on 10/3/18.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest

@testable import HalfTunes

class HalfTunesFakeTests: XCTestCase {

    
    var controllerUnderTest: SearchViewController!
    
    
    override func setUp() {
        super.setUp()
        controllerUnderTest = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! SearchViewController!
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        controllerUnderTest = nil
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
