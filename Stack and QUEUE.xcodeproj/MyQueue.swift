//
//  MyQueue.swift
//  Lifo
//
//  Created by Aseel Alshohatee on 3/27/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//


struct MyQueue<Element> {
    var items: [Element] = [Element]();
    
    var count: Int {   //computed property
        return items.count;
    }
    
    // MARK: - Mutating methods
    mutating func enqueue(_ item: Element) {
        items.append(item);
    }
    
    mutating func dequeue() -> Element {
        guard !items.isEmpty else {
            fatalError("can't take blood from a stone");
        }
        return items.removeFirst();
    }
}

extension MyQueue {   //to make it easy to display the MyStack in a UITableView
    // Item 0 is the first one pushed.
    // Item count - 1 is the most recently pushed.
    
    func get(_ i: Int) -> Element {
        guard (0 ..< count).contains(i) else {
            fatalError("can't get item \(i) of \(count)");
        }
        return items[i];
    }
}


