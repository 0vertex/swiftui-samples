//
//  UsersListSampleData.swift
//  SwiftUI-Lists
//
//  Created by Manish on 08/10/21.
//

import Foundation

struct UsersListSampleData {
    
    static let userNames = ["Areeb West",
                            "Rhiann Mendez",
                            "Kourtney Almond",
                            "Ishika Rosas",
                            "Tahmina Kearney",
                            "Willa Newman",
                            "Jamie-Lee Jordan",
                            "Seamus Rangel",
                            "Szymon Everett",
                            "Remi Redman",
                            "Huzaifah Fellows",
                            "Bob Kouma",
                            "Dru Forbes",
                            "Isla-Rae Mayo",
                            "Devonte Horne",
                            "Sophie-Louise Harrison",
                            "Aoife Devine",
                            "Nancie Blackburn",
                            "Aaron Fernandez",
                            "Shanay Jaramillo"]
    
    static let allUserCategories = UserCategory.allCases
    
    static func generate() -> [User] {
        userNames.map { User(id: UUID(),
                             name: $0,
                             age: Int.random(in: 10...30),
                             category: allUserCategories[Int.random(in: 0..<allUserCategories.count)]) }
    }
    
}
