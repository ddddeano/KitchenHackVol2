//
//  Dish+CoreDataProperties.swift
//  MiseBoxAgency
//
//  Created by Daniel Watson on 10/06/2021.
//
//

import Foundation
import CoreData

@objc(Dish)
public class Dish: NSManagedObject {

}

extension Dish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dish> {
        return NSFetchRequest<Dish>(entityName: "Dish")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var miseEnPlace: NSSet?
    @NSManaged public var recipes: NSSet?
    @NSManaged public var restaurant: Restaurant?
    
    public var wrappedName: String {
        name ?? "unknown"
    }

}

// MARK: Generated accessors for miseEnPlace
extension Dish {

    @objc(addMiseEnPlaceObject:)
    @NSManaged public func addToMiseEnPlace(_ value: MiseEnPlace)

    @objc(removeMiseEnPlaceObject:)
    @NSManaged public func removeFromMiseEnPlace(_ value: MiseEnPlace)

    @objc(addMiseEnPlace:)
    @NSManaged public func addToMiseEnPlace(_ values: NSSet)

    @objc(removeMiseEnPlace:)
    @NSManaged public func removeFromMiseEnPlace(_ values: NSSet)

}

// MARK: Generated accessors for recipes
extension Dish {

    @objc(addRecipesObject:)
    @NSManaged public func addToRecipes(_ value: Recipe)

    @objc(removeRecipesObject:)
    @NSManaged public func removeFromRecipes(_ value: Recipe)

    @objc(addRecipes:)
    @NSManaged public func addToRecipes(_ values: NSSet)

    @objc(removeRecipes:)
    @NSManaged public func removeFromRecipes(_ values: NSSet)

}

extension Dish : Identifiable {

}
