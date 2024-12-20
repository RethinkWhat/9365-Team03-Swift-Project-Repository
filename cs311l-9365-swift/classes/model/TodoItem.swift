//
//  TodoItem.swift
//  cs311l-9365-swift
//
//  Created by Johan on 9/4/24.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var course: String
    var name: String
    var isCompleted: Bool
    
    /**
     Constructs an object of TodoItem with user-defined values.
     */
    init(course: String, name: String, isCompleted: Bool = false) {
        self.course = course
        self.name = name
        self.isCompleted = isCompleted
    }
    
    mutating func updateStatus() {
        isCompleted = !isCompleted
    }

    var description: String {
        return "\(course) \(name) \(isCompleted)"
    }
}
