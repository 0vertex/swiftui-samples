//
//  CD_ProductEntity+CoreDataProperties.swift
//  SwiftUI-CoreData
//
//  Created by Manish on 09/10/21.
//
//

import Foundation
import CoreData


extension CD_ProductEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CD_ProductEntity> {
        return NSFetchRequest<CD_ProductEntity>(entityName: "CD_ProductEntity")
    }

    @NSManaged public var id: UUID
    @NSManaged public var name: String
    @NSManaged public var price: Double

}

extension CD_ProductEntity : Identifiable {

}
