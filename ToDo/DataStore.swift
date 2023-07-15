//
//
// Created by Swervo 7/15/2023

import Foundation
import SwiftUI
import Combine

// Struct (much like a class) holds info related to what every Task will hold.
// Define an ID for and TaskItem for every Task.
struct Task : Identifiable {
    var id = String()
    var taskItem = String()
}

// Classes will declare the needed information to create a task object.
// Define the DataStore as an array of Tasks.
class TaskDataStore: ObservableObject {
    
    // @Published is a property wrapper that announces when changes occur to the DataStore.
    @Published var tasks = [Task]() // Array of task objects
}
