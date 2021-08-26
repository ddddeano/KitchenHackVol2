//
//  ContentViewModel.swift
//  KitchenHack
//
//  Created by Daniel Watson on 25/08/2021.
//

import Foundation

class ContentViewModel: ObservableObject {
    var restaurantModel = RestaurantDataModel()
    
    @Published var showAddNewRestaurantSheet = false
    
    init() {
        if restaurantModel.restaurants.isEmpty {
            showAddNewRestaurantSheet = true
        }
    }
    
    
    
    func primaryRestaurant(_ data: [Restaurant]) -> String {
        let restaurant = data.first { $0.isPrimary == true }
        return restaurant?.name ?? "no Restaurants"
    }
}


