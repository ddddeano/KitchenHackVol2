//
//  MiseEnPlace+CoreDataProperties.swift
//  MiseBoxAgency
//
//  Created by Daniel Watson on 10/06/2021.
//
//

import Foundation
import CoreData

@objc(MiseEnPlace)
public class MiseEnPlace: NSManagedObject {

}


extension MiseEnPlace {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MiseEnPlace> {
        return NSFetchRequest<MiseEnPlace>(entityName: "MiseEnPlace")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var dishes: NSSet?
    @NSManaged public var ingredients: NSSet?
    @NSManaged public var recipes: NSSet?
    @NSManaged public var restaurant: Restaurant?
    
    public var wrappedName: String {
        name ?? "unknown"
    }

}

// MARK: Generated accessors for dishes
extension MiseEnPlace {

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
extension MiseEnPlace {

    @objc(addIngredientsObject:)
    @NSManaged public func addToIngredients(_ value: Ingredient)

    @objc(removeIngredientsObject:)
    @NSManaged public func removeFromIngredients(_ value: Ingredient)

    @objc(addIngredients:)
    @NSManaged public func addToIngredients(_ values: NSSet)

    @objc(removeIngredients:)
    @NSManaged public func removeFromIngredients(_ values: NSSet)

}

// MARK: Generated accessors for recipes
extension MiseEnPlace {

    @objc(addRecipesObject:)
    @NSManaged public func addToRecipes(_ value: Recipe)

    @objc(removeRecipesObject:)
    @NSManaged public func removeFromRecipes(_ value: Recipe)

    @objc(addRecipes:)
    @NSManaged public func addToRecipes(_ values: NSSet)

    @objc(removeRecipes:)
    @NSManaged public func removeFromRecipes(_ values: NSSet)

}

extension MiseEnPlace : Identifiable {

}
