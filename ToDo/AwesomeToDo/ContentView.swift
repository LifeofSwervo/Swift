//
//  ContentView.swift
//  AwesomeToDo
//
//  Created by Apollo on 25/03/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    // @ObservedObject is a property wrapper that gives the views (User Interface) a way to watch the state of an object. For example, a datastore.
    // Here we create a taskStore observedObject that references to TaskDataStore (We will be defining this later on). 
    @ObservedObject var taskStore = TaskDataStore()
    @State var newTask : String = ""
    
    var addTaskBar : some View {
        HStack {
            TextField("Add Task: ", text: self.$newTask)
            Button(action: self.addNewTask, label: {
                Text("Add New")
            })
        }
    }
    
    func addNewTask() {
        taskStore.tasks.append(Task(
            id: String(taskStore.tasks.count + 1),
            taskItem: newTask
        ))
        self.newTask = ""
    }
    
    var body: some View {
        NavigationView {
            VStack {
                addTaskBar.padding()
                List {
                    ForEach(self.taskStore.tasks) { task in
                        Text(task.taskItem)
                    }.onDelete(perform: self.deleteTask)
                }.navigationBarTitle("Tasks").navigationBarItems(trailing: EditButton())
            }
        }
    }
    
    func deleteTask(at offsets: IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
