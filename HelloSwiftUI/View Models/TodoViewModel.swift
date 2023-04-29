//
//  TodoViewModel.swift
//  HelloSwiftUI
//
//  Created by Pankorn on 29/4/23.
//

import Foundation

class TodoViewModel: ObservableObject {
    @Published var newTask = ""
    @Published var todoItems: [TodoItem] = [
        TodoItem(task: "Buy groceries"),
        TodoItem(task: "Clean the house"),
        TodoItem(task: "Take out the trash")
    ]
    
    func addTask() {
        guard !newTask.isEmpty else { return }
        
        todoItems.append(TodoItem(task: newTask))
        newTask = ""
    }
    
    func deleteTask(_ offsets: IndexSet) {
        todoItems.remove(atOffsets: offsets)
    }
    
    func move(fromOffsets: IndexSet, toOffset: Int) {
        todoItems.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}

