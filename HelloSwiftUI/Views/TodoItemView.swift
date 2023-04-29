//
//  TodoItemView.swift
//  HelloSwiftUI
//
//  Created by Pankorn on 29/4/23.
//

import SwiftUI

struct TodoItemView: View {
    @Binding var todoItem: TodoItem
    
    var body: some View {
        Toggle(isOn: $todoItem.selected) {
            TextField("Task ...", text: $todoItem.task)
        }
    }
}
