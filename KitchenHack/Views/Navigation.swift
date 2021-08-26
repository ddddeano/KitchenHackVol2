//
//  Navigation.swift
//  KitchenHack
//
//  Created by Daniel Watson on 05/08/2021.
//

import SwiftUI

struct Navigation: View {
    @EnvironmentObject var dataModel: KitchenHackModel
    
    var body: some View {
        NavigationView{
            List {
                NavigationLink(destination: RestaurantControlView().environmentObject(dataModel.restaurantModel)) {
                    Text("Restaurants")
                }
            }
        }
    }
}

struct TabsMenuView: View {
    @StateObject var VM = MenuViewModel()
    @ObservedObject var OVM: ContentViewModel
    
    var body: some View {
        TabView(selection: $VM.selectedTab) {
            IngredientControl()
                .tabItem{
                    Label("Ingredients", systemImage: "square.and.pencil")
                }.tag("Ingredients")
            SupplierControl()
                .tabItem{
                    Label("Suppliers", systemImage: "square.and.pencil")
                }.tag("Suppliers")
            PurchaseControl()
                .tabItem{
                    Label("Purchases", systemImage: "square.and.pencil")
                }.tag("Purchases ")
        }
    }
}

struct IngredientControl: View {
    var body: some View {
        Text("Ingredient")
    }
}

struct SupplierControl: View {
    var body: some View {
        Text("Supplier")
    }
}
struct PurchaseControl: View {
    var body: some View {
        Text("Purchase")
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
