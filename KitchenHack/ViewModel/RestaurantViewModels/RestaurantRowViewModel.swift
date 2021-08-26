//
//  RestaurantRowViewModel.swift
//  KitchenHack
//
//  Created by Daniel Watson on 05/08/2021.
//

import Foundation

class RestaurantRowViewModel: ObservableObject {
    var restaurant: Restaurant
    init(_ restaurant: Restaurant) {
        self.restaurant = restaurant
    }
    func getImage(_ data: [Restaurant]) -> String {
        let index = data.firstIndex(of: restaurant)
        return data[index!].isPrimary ? "star.fill" : "star"
    }
    
    func click() -> Restaurant {
        return restaurant
    }
}

