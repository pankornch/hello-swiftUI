//
//  TodoView.swift
//  HelloSwiftUI
//
//  Created by Pankorn on 29/4/23.
//

import SwiftUI

struct TodoView: View {
    @StateObject var viewModel = TodoViewModel()
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("New Task")) {
                    TextField("Add a new task", text: $viewModel.newTask)
                    Button(action: viewModel.addTask) {
                        Text("Add Task")
                    }
                }
                
                Section(header: Text("Todo List")) {
                    ForEach($viewModel.todoItems, id: \.id) { $item in
                        TodoItemView(todoItem: $item)
                    }
                    .onDelete(perform: viewModel.deleteTask)
                    .onMove(perform: viewModel.move)
                }
                
                
            }
            .navigationTitle("To-Do List")
            .navigationBarItems(trailing: EditButton())
        }
    }
}
