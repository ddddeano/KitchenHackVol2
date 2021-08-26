//
//  AddNewRestaurantSheet.swift
//  KitchenHack
//
//  Created by Daniel Watson on 25/08/2021.
//

import SwiftUI
struct AddRestaurantSimple: View {
    
    @EnvironmentObject var dataModel: RestaurantDataModel
    @StateObject var viewModel = AddRestaurantViewModel()
    
    var body : some View {
        List {
            TextField("Restaurant Name", text: $viewModel.name)
            Image(systemName: "plus")
                .onTapGesture {
                    viewModel.addRestaurant(dataModel)
                    self.pm.wrappedValue.dismiss()
                }
        }
    }
    @Environment(\.presentationMode) var pm
}

class AddRestaurantViewModel: ObservableObject {
    @Published var name = ""
    
    func addRestaurant(_ dataModel: RestaurantDataModel) {
        if name.isEmpty {
            dataModel.addRestaurantSimple("My First Restaurant")
        } else {
            dataModel.addRestaurantSimple(name)
        }
    }
}

