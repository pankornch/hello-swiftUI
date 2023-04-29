//
//  Todo.swift
//  HelloSwiftUI
//
//  Created by Pankorn on 29/4/23.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var task: String
    var selected = false
    var createdAt = Date.now
}
