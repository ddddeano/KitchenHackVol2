//
//  Recipe+CoreDataProperties.swift
//  MiseBoxAgency
//
//  Created by Daniel Watson on 10/06/2021.
//
//

import Foundation
import CoreData

@objc(Recipe)
public class Recipe: NSManagedObject {
    
}

extension Recipe {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipe> {
        return NSFetchRequest<Recipe>(entityName: "Recipe")
    }
    
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var dishes: NSSet?
    @NSManaged public var ingredients: NSSet?
    @NSManaged public var miseEnPlace: NSSet?
    @NSManaged public var restaurant: Restaurant?
    
    public var wrappedName: String {
        name ?? "unknown"
    }
    
    public var dishArray: [Dish] {
        let set = dishes as? Set<Dish> ?? []
        
        return set.sorted {
            $0.wrappedName < $1.wrappedName
        }
    }
    public var ingredientArray: [Ingredient] {
        let set = ingredients as? Set<Ingredient> ?? []
        
        return set.sorted {
            $0.wrappedName < $1.wrappedName
        }
    }
    public var misEnPlaceArray: [MiseEnPlace] {
        let set = miseEnPlace as? Set<MiseEnPlace> ?? []
        
        return set.sorted {
            $0.wrappedName < $1.wrappedName
        }
    }
    
    
}

// MARK: Generated accessors for dishes
extension Recipe {
    
    @objc(addDishesObject:)
    @NSManaged public func addToDishes(_ value: Dish)
    
    @objc(removeDishesObject:)
    @NSManaged public func removeFromDishes(_ value: Dish)
    
    @objc(addDishes:)
    @NSManaged public func addToDishes(_ values: NSSet)
    
    @objc(removeDishes:)
    @NSManaged public func removeFromDishes(_ values: NSSet)
    
}

// MARK: Generated accessors for ingredients
extension Recipe {
    
    @objc(addIngredientsObject:)
    @NSManaged public func addToIngredients(_ value: Ingredient)
    
    @objc(removeIngredientsObject:)
    @NSManaged public func removeFromIngredients(_ value: Ingredient)
    
    @objc(addIngredients:)
    @NSManaged public func addToIngredients(_ values: NSSet)
    
    @objc(removeIngredients:)
    @NSManaged public func removeFromIngredients(_ values: NSSet)
    
}

// MARK: Generated accessors for miseEnPlace
extension Recipe {
    
    @objc(addMiseEnPlaceObject:)
    @NSManaged public func addToMiseEnPlace(_ value: MiseEnPlace)
    
    @objc(removeMiseEnPlaceObject:)
    @NSManaged public func removeFromMiseEnPlace(_ value: MiseEnPlace)
    
    @objc(addMiseEnPlace:)
    @NSManaged public func addToMiseEnPlace(_ values: NSSet)
    
    @objc(removeMiseEnPlace:)
    @NSManaged public func removeFromMiseEnPlace(_ values: NSSet)
    
}

extension Recipe : Identifiable {
    
}
