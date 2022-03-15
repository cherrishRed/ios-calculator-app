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
        
        guard let result1 = sut.dequeue() else { return }
        guard let resultData1 = result1.data as? Double else { return }
        guard let result2 = sut.dequeue() else { return }
        guard let resultData2 = result2.data as? Double else { return }
        guard let result3 = sut.dequeue() else { return }
        guard let resultData3 = result3.data as? Double else { return }
        guard let result4 = sut.dequeue() else { return }
        guard let resultData4 = result4.data as? Double else { return }
        XCTAssertEqual(resultData1, 10)
        XCTAssertEqual(resultData2, 100)
        XCTAssertEqual(resultData3, 77)
        
        XCTAssertEqual(resultData4, nil)
    }
}
