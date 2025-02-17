//
//  CalculatorItemQueue.swift
//  Calculator
//
//  Created by Red on 2022/03/18.
//

import Foundation

protocol CalculateItem {
    // empty
}

struct CalculatorItemQueue<T: CalculateItem> {
    private var queue: [Int: T] = [:]
    private var head = Int.zero
    private var tail = Int.zero
    
    init(values: [T] = []) {
        values.forEach { enqueue(with: $0) }
    }
    
    var isEmpty: Bool {
        return queue.isEmpty
    }
    
    mutating func enqueue(with data: T) {
        queue[tail] = data
        tail += 1
    }
    
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        }
        let value = queue[head]
        queue[head] = nil
        head += 1
        return value
    }
    
    mutating func reset() {
        queue = [:]
        head = Int.zero
        tail = Int.zero
    }
}
