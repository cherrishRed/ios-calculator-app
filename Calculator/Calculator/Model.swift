//
//  model.swift
//  Calculator
//
//  Created by Red on 2022/03/15.
//

import Foundation

protocol CalculateItem {
}

enum Operator: CalculateItem {
    case add, subtract, multiply, division
}

extension Double: CalculateItem {
}

final class Node {
    var data: CalculateItem?
    var next: Node?
    
    init(data: CalculateItem, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

struct LinkedList {
    var head: Node?
    var tail: Node?
    
    mutating func push(with data: CalculateItem) {
        let newNode = Node(data: data)
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            tail?.next = newNode
            tail = newNode
        }
    }
    
    mutating func popNode() -> Node? {
        if head == nil {
            return nil
        } else {
            let firstNode = head
            head = firstNode?.next
            return firstNode
        }
    }
}

struct CalculatorItemQueue {
    var queue = LinkedList()
    
    mutating func enqueue(with data: CalculateItem) {
        queue.push(with: data)
    }
    
    mutating func dequeue() -> Node? {
        queue.popNode()
    }
}
