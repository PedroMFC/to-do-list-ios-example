//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Pedro Manuel Flores Crespo on 29/8/25.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
