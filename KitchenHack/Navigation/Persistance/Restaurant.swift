//
//  Restaurant+CoreDataProperties.swift
//  MiseBoxAgency
//
//  Created by Daniel Watson on 10/06/2021.
//
//

import Foundation
import CoreData

@objc(Restaurant)
public class Restaurant: NSManagedObject {

}

extension Restaurant {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Restaurant> {
        return NSFetchRequest<Restaurant>(entityName: "Restaurant")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var town: String?
    @NSManaged public var suppliers: NSSet?
    @NSManaged public var dishes: NSSet?
    @NSManaged public var miseEnPlace: NSSet?
    @NSManaged public var purchases: NSSet?
    @NSManaged public var recipes: NSSet?
    @NSManaged public var ingredients: NSSet?
    @NSManaged public var isPrimary: Bool

    public var wrappedName: String {
        name ?? "unknown"
    }
    public var wrappedTown: String {
        town ?? "unknown"
    }
    public var supplierArray: [Supplier] {
        let set = suppliers as? Set<Supplier> ?? []
        
        return set.sorted {
            $0.wrappedName < $1.wrappedName
        }
    }
    
    public var dishArray: [Dish] {
        let set = dishes as? Set<Dish> ?? []
        
        return set.sorted {
            $0.wrappedName < $1.wrappedName
        }
    }
    
    public var miseArray: [MiseEnPlace] {
        let set = miseEnPlace as? Set<MiseEnPlace> ?? []
        
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

// MARK: Generated accessors for suppliers
extension Restaurant {

    @objc(addSuppliersObject:)
    @NSManaged public func addToSuppliers(_ value: Supplier)

    @objc(removeSuppliersObject:)
    @NSManaged public func removeFromSuppliers(_ value: Supplier)

    @objc(addSuppliers:)
    @NSManaged public func addToSuppliers(_ values: NSSet)

    @objc(removeSuppliers:)
    @NSManaged public func removeFromSuppliers(_ values: NSSet)

}

// MARK: Generated accessors for dishes
extension Restaurant {

    @objc(addDishesObject:)
    @NSManaged public func addToDishes(_ value: Dish)

    @objc(removeDishesObject:)
    @NSManaged public func removeFromDishes(_ value: Dish)

    @objc(addDishes:)
    @NSManaged public func addToDishes(_ values: NSSet)

    @objc(removeDishes:)
    @NSManaged public func removeFromDishes(_ values: NSSet)

}

// MARK: Generated accessors for miseEnPlace
extension Restaurant {

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
extension Restaurant {

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
extension Restaurant {

    @objc(addRecipesObject:)
    @NSManaged public func addToRecipes(_ value: Recipe)

    @objc(removeRecipesObject:)
    @NSManaged public func removeFromRecipes(_ value: Recipe)

    @objc(addRecipes:)
    @NSManaged public func addToRecipes(_ values: NSSet)

    @objc(removeRecipes:)
    @NSManaged public func removeFromRecipes(_ values: NSSet)

}

// MARK: Generated accessors for ingredients
extension Restaurant {

    @objc(addIngredientsObject:)
    @NSManaged public func addToIngredients(_ value: Ingredient)

    @objc(removeIngredientsObject:)
    @NSManaged public func removeFromIngredients(_ value: Ingredient)

    @objc(addIngredients:)
    @NSManaged public func addToIngredients(_ values: NSSet)

    @objc(removeIngredients:)
    @NSManaged public func removeFromIngredients(_ values: NSSet)

}

extension Restaurant : Identifiable {

}
