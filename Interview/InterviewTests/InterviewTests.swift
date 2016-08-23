//
//  InterviewTests.swift
//  InterviewTests
//
//  Created by xiaomingsong on 8/23/16.
//  Copyright © 2016 xiaomingsong. All rights reserved.
//

import XCTest
@testable import Interview

class InterviewTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let inProductArray = [1, 3, 1, 6]
        
        let expectationProductArray = [18, 6, 18, 3]
        let outProductArray = ProductArray.productArray(array: inProductArray)
        
        for (index, value) in expectationProductArray.enumerated() {
            XCTAssertEqual(value, outProductArray[index])
        }
        
        var input = [0, 1, 2, 3, 0, 6]
        let expectation = [1, 2, 3, 6, 0, 0]
        
        let output = NumberFirst.numberFirst(array: &input)
        
        for (index, value) in expectation.enumerated() {
            XCTAssertEqual(value, output[index])
        }
        
        let x = 4, y = 5
        let powResult = 1024
        
        XCTAssertEqual(GameLife.pow(x,y), powResult)
        
        let s = 8, squrtResult = 2
        
        XCTAssertEqual(GameLife.sqrt(s), squrtResult)
        XCTAssertEqual(GameLife.sqrt(9), 3)
        XCTAssertEqual(GameLife.sqrt(10), 3)
        XCTAssertEqual(GameLife.sqrt(11), 3)
        XCTAssertNotEqual(GameLife.sqrt(15), 4)
        
        
        var board = [[1, 0, 0, 1],
                     [1, 0, 0, 1],
                     [1, 0, 0, 1],
                     [1, 0, 0, 1],
                     [1, 0, 0, 1]
                     ]
        
        let expectationBoard = [[0, 0, 0, 0],
                                [1, 1, 1, 1],
                                [1, 1, 1, 1],
                                [1, 1, 1, 1],
                                [0, 0, 0, 0]
        ]
        
        let boardResult = GameLife.GameOfLife(&board)
        
        for (index, array) in expectationBoard.enumerated() {
            for (i, value) in array.enumerated() {
                XCTAssertEqual(boardResult[index][i], value)
            }
        }
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
