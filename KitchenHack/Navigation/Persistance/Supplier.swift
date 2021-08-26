//
//  Supplier+CoreDataProperties.swift
//  MiseBoxAgency
//
//  Created by Daniel Watson on 10/06/2021.
//
//

import Foundation
import CoreData

@objc(Supplier)
public class Supplier: NSManagedObject {
    

}

extension Supplier {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Supplier> {
        return NSFetchRequest<Supplier>(entityName: "Supplier")
    }

    @NSManaged public var email: String?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var ingredients: NSSet?
    @NSManaged public var purchases: NSSet?
    @NSManaged public var restaurants: NSSet?
    
    public var wrappedName: String {
        name ?? "unknown"
    }

}

// MARK: Generated accessors for ingredients
extension Supplier {

    @objc(addIngredientsObject:)
    @NSManaged public func addToIngredients(_ value: Ingredient)

    @objc(removeIngredientsObject:)
    @NSManaged public func removeFromIngredients(_ value: Ingredient)

    @objc(addIngredients:)
    @NSManaged public func addToIngredients(_ values: NSSet)

    @objc(removeIngredients:)
    @NSManaged public func removeFromIngredients(_ values: NSSet)

}

// MARK: Generated accessors for purchases
extension Supplier {

    @objc(addPurchasesObject:)
    @NSManaged public func addToPurchases(_ value: Purchase)

    @objc(removePurchasesObject:)
    @NSManaged public func removeFromPurchases(_ value: Purchase)

    @objc(addPurchases:)
    @NSManaged public func addToPurchases(_ values: NSSet)

    @objc(removePurchases:)
    @NSManaged public func removeFromPurchases(_ values: NSSet)

}

// MARK: Generated accessors for restaurants
extension Supplier {

    @objc(addRestaurantsObject:)
    @NSManaged public func addToRestaurants(_ value: Restaurant)

    @objc(removeRestaurantsObject:)
    @NSManaged public func removeFromRestaurants(_ value: Restaurant)

    @objc(addRestaurants:)
    @NSManaged public func addToRestaurants(_ values: NSSet)

    @objc(removeRestaurants:)
    @NSManaged public func removeFromRestaurants(_ values: NSSet)

}

extension Supplier : Identifiable {

}
