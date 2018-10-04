//
//  HalfTunesSlowTests.swift
//  HalfTunesSlowTests
//
//  Created by Scott OToole on 10/3/18.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest

@testable import HalfTunes

class HalfTunesSlowTests: XCTestCase {

    var sessionUnderTest: URLSession!
    
    override func setUp() {
        super.setUp()
        sessionUnderTest = URLSession(configuration: URLSessionConfiguration.default)

        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        
        sessionUnderTest = nil
        super.tearDown()
        
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValidCallToiTunesGetsHTTPStatusCode200(){
        
        //gien
        let url = URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=abba")
        
        //1
        let promise = expectation(description: "completion handler invoked")
        
        var statusCode: Int?
        
        var responseError: Error?
        
        
        //when
        let dataTask = sessionUnderTest.dataTask(with: url!) {data, response, error in
            statusCode = (response as? HTTPURLResponse)?.statusCode
            responseError = error
            //2
            promise.fulfill()
        }
        
        dataTask.resume()
        
        waitForExpectations(timeout: 5, handler: nil)
  
        XCTAssertNil(responseError)
        XCTAssertEqual(statusCode, 200)
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
