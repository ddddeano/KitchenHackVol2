//
//  RestaurantControlViewModel.swift
//  KitchenHack
//
//  Created by Daniel Watson on 26/08/2021.
//

import Foundation

class RestaurantControlViewModel: ObservableObject {
    
    @Published var showAddNewRestaurantSheet = false
}


class NewRestaurantSheetViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var town = ""
    @Published var isPrimary = false
    
    func addRestaurant() -> RestaurantDataModel.RestaurantDetails {
        let restaurant = RestaurantDataModel.RestaurantDetails(
            name: name, town: town, isPrimary: isPrimary)
        return restaurant
    }
}
