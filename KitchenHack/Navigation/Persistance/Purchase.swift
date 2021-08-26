//
//  Purchase+CoreDataProperties.swift
//  MiseBoxAgency
//
//  Created by Daniel Watson on 10/06/2021.
//
//

import Foundation
import CoreData

@objc(Purchase)
public class Purchase: NSManagedObject {

}

extension Purchase {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Purchase> {
        return NSFetchRequest<Purchase>(entityName: "Purchase")
    }

    @NSManaged public var brand: String?
    @NSManaged public var id: UUID?
    @NSManaged public var isFave: Bool
    @NSManaged public var price: String?
    @NSManaged public var qty: String?
    @NSManaged public var unit: String?
    @NSManaged public var ingredient: Ingredient?
    @NSManaged public var supplier: Supplier?
    @NSManaged public var restaurant: Restaurant?
    
    public var wrappedBrand: String {
        brand ?? "unknown"
    }
    public var wrappedPrice: String {
        price ?? "unknown"
    }
    public var wrappedQty: String {
        qty ?? "unknown"
    }
    public var wrappedUnit: String {
        unit ?? "unknown"
    }
    

}

extension Purchase : Identifiable {

}
