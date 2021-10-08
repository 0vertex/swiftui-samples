//
//  User.swift
//  SwiftUI-Lists
//
//  Created by Manish on 08/10/21.
//

import Foundation

struct User {
    let id: UUID
    let name: String
    let age: Int
    let category: UserCategory
}

enum UserCategory: String, CaseIterable {
    case student
    case businessOwner
    case employee
    case unknown
}
