//
//  User.swift
//  ToDoList
//
//  Created by Pedro Manuel Flores Crespo on 29/8/25.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
