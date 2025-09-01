//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Pedro Manuel Flores Crespo on 29/8/25.
//
import FirebaseFirestore
import Foundation

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userID: String) {
        self.userId = userID
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
