//
//  cardLayoutTests.swift
//  cardLayoutTests
//
//  Created by Anan K. Mallik on 18/08/20.
//  Copyright © 2020 Anan K. Mallik. All rights reserved.
//

import XCTest
@testable import cardLayout

class cardLayoutTests: XCTestCase {
    
    override func setUp() {
        super.setUp()

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {

        //test to see if at least 1 data point is in the model:
        XCTAssertEqual(DataModel.sharedInstance.title.count, 1)
        XCTAssertEqual(DataModel.sharedInstance.description.count, 1)
        
        XCTAssert(true, "All Test Have Passed.")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
