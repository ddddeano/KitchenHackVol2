//
//  ContentView.swift
//  KitchenHack
//
//  Created by Daniel Watson on 04/08/2021.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var dataModel: KitchenHackModel
    @EnvironmentObject var restaurantModel: RestaurantDataModel
    @StateObject var viewModel = ContentViewModel()
    
    
    var body: some View {
        NavigationView {
            Navigation()
            .sheet(
                isPresented: $viewModel.showAddNewRestaurantSheet,
                content: { AddRestaurantSimple().environmentObject(restaurantModel) }
            )
                .navigationBarTitle(viewModel.primaryRestaurant(restaurantModel.restaurants))
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
