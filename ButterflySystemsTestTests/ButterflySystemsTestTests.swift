//
//  ButterflySystemsTestTests.swift
//  ButterflySystemsTestTests
//
//  Created by Regan Russell on 12/2/20.
//  Copyright © 2020 Regan Russell. All rights reserved.
//

import XCTest
@testable import ButterflySystemsTest

class ButterflySystemsTestTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDivideByZero() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        XCTAssert( CalculatorViewModel.calculate(firstNumber: 8, secondNumber: 0, operand: "/") == 0 )
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
