//
//  Ingredient+CoreDataProperties.swift
//  MiseBoxAgency
//
//  Created by Daniel Watson on 10/06/2021.
//
//

import Foundation
import CoreData

@objc(Ingredient)
public class Ingredient: NSManagedObject {

}

extension Ingredient {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ingredient> {
        return NSFetchRequest<Ingredient>(entityName: "Ingredient")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var miseEnPlace: NSSet?
    @NSManaged public var purchases: NSSet?
    @NSManaged public var recipes: NSSet?
    @NSManaged public var suppliers: NSSet?
    @NSManaged public var restaurant: Restaurant?
    
    public var wrappedName: String {
        name ?? "unknown"
    }
    
    public var supplierArray: [Supplier] {
        let set = suppliers as? Set<Supplier> ?? []
        
        return set.sorted {
            $0.wrappedName < $1.wrappedName
        }
    }
    public var purchaseArray: [Purchase] {
        let set = purchases as? Set<Purchase> ?? []
        
        return set.sorted {
            $0.id < $1.id
        }
    }

}

// MARK: Generated accessors for miseEnPlace
extension Ingredient {

    @objc(addMiseEnPlaceObject:)
    @NSManaged public func addToMiseEnPlace(_ value: MiseEnPlace)

    @objc(removeMiseEnPlaceObject:)
    @NSManaged public func removeFromMiseEnPlace(_ value: MiseEnPlace)

    @objc(addMiseEnPlace:)
    @NSManaged public func addToMiseEnPlace(_ values: NSSet)

    @objc(removeMiseEnPlace:)
    @NSManaged public func removeFromMiseEnPlace(_ values: NSSet)

}

// MARK: Generated accessors for purchases
extension Ingredient {

    @objc(addPurchasesObject:)
    @NSManaged public func addToPurchases(_ value: Purchase)

    @objc(removePurchasesObject:)
    @NSManaged public func removeFromPurchases(_ value: Purchase)

    @objc(addPurchases:)
    @NSManaged public func addToPurchases(_ values: NSSet)

    @objc(removePurchases:)
    @NSManaged public func removeFromPurchases(_ values: NSSet)

}

// MARK: Generated accessors for recipes
extension Ingredient {

    @objc(addRecipesObject:)
    @NSManaged public func addToRecipes(_ value: Recipe)

    @objc(removeRecipesObject:)
    @NSManaged public func removeFromRecipes(_ value: Recipe)

    @objc(addRecipes:)
    @NSManaged public func addToRecipes(_ values: NSSet)

    @objc(removeRecipes:)
    @NSManaged public func removeFromRecipes(_ values: NSSet)

}

// MARK: Generated accessors for suppliers
extension Ingredient {

    @objc(addSuppliersObject:)
    @NSManaged public func addToSuppliers(_ value: Supplier)

    @objc(removeSuppliersObject:)
    @NSManaged public func removeFromSuppliers(_ value: Supplier)

    @objc(addSuppliers:)
    @NSManaged public func addToSuppliers(_ values: NSSet)

    @objc(removeSuppliers:)
    @NSManaged public func removeFromSuppliers(_ values: NSSet)

}

extension Ingredient : Identifiable {

}
