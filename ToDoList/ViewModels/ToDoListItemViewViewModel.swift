 //
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Pedro Manuel Flores Crespo on 29/8/25.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class ToDoListItemViewViewModel: ObservableObject {
    init() {
        
    }
    
    func toggleIsDone(item: ToDoListItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .updateData(newItem.asDictionary())
        
    }
}
