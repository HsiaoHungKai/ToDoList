//
//  User.swift
//  ToDoList
//
//  Created by Earnest Hsiao on 2024/10/21.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
