//
//  ModelTests.swift
//  ModelTests
//
//  Created by Red on 2022/03/15.
//

import XCTest
@testable import Calculator

class ModelTests: XCTestCase {
    var sut: Queue!

    override func setUpWithError() throws {
        sut = Queue()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func test_enqueue_and_dequeue() {
        sut.enqueue(data: 10)
        sut.enqueue(data: 100)
        sut.enqueue(data: 77)
        
        let result1 = sut.dequeue()
        let result2 = sut.dequeue()
        let result3 = sut.dequeue()
        let result4 = sut.dequeue()
        XCTAssertEqual(result1?.data, 10)
        XCTAssertEqual(result2?.data, 100)
        XCTAssertEqual(result3?.data, 77)
        
        XCTAssertEqual(result4?.data, nil)
    }
}
