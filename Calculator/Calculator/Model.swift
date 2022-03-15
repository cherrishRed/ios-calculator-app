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
    
    mutating func pushNode(_ data: CalculateItem) {
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
        let removalNode = head
        head = removalNode?.next
        return removalNode
    }
}

struct Queue {
    var queue = LinkedList()
    
    mutating func enqueue(data: CalculateItem) {
        queue.pushNode(data)
    }
    
    mutating func dequeue() -> Node? {
        queue.popNode()
    }
}
