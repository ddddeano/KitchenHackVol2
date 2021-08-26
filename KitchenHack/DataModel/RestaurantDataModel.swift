//
//  RestaurantDataModel.swift
//  KitchenHack
//
//  Created by Daniel Watson on 04/08/2021.
//

import Foundation
import CoreData

class RestaurantDataModel: ObservableObject {
    let moc = pC.viewContext
    
    @Published var restaurants = [Restaurant]()
    
    struct RestaurantDetails {
//A Mini Struct For Handling User input Data
        var name: String?
        var town: String?
        var isPrimary: Bool
    }
    
    init() {
        fetchRestaurants()
    }
    
    //  Create New Restaurant
    //  First function takes Full Details, second just takes the name for when the user first uses the app, both functions persist to CoreData, can probably combine these into one function in the future
    func addNewRestaurant(_ restaurantDetails: RestaurantDataModel.RestaurantDetails) {
        let restaurant = Restaurant(context: moc)
        restaurant.id = UUID()
        restaurant.name = restaurantDetails.name
        restaurant.town = restaurantDetails.town
        restaurant.isPrimary = restaurantDetails.isPrimary
        try? moc.save()
        fetchRestaurants()
    }
    func addRestaurantSimple(_ name: String) {
        let restaurant = Restaurant(context: moc)
        restaurant.name = name
        restaurant.isPrimary =  true
        try? moc.save()
        fetchRestaurants()
        
    }
    
    // Fetch ALL Restaurants From Core Data Persistent Stores
    func fetchRestaurants() {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Restaurant")
        let results = try! moc.fetch(request) as? [Restaurant] ?? [Restaurant]()
        self.restaurants = results
    }
    func update() {
        //        edit Restaurant(primary)
    }
    func isPrimary(_ restaurant: Restaurant){
        for index in restaurants.indices { restaurants[index].isPrimary = false }
        let i = restaurants.firstIndex(of: restaurant)
        restaurants[i!].isPrimary = true
        fetchRestaurants()
    }
    func delete() {
        //        delete Restaurant
    }
}
