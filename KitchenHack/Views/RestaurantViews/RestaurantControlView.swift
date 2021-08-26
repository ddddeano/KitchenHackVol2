//
//  RestaurantControlView.swift
//  KitchenHack
//
//  Created by Daniel Watson on 05/08/2021.
//

import SwiftUI

struct NewRestaurantSheet: View {
    @StateObject var viewModel = NewRestaurantSheetViewModel()
    @EnvironmentObject var dataModel: RestaurantDataModel
    
    var body: some View {
        List {
            TextField("Restaurant Name", text: $viewModel.name)
            Image(systemName: "plus")
                .onTapGesture {
                    dataModel.addNewRestaurant(viewModel.addRestaurant())
                    self.pm.wrappedValue.dismiss()
                }
        }
    }
    @Environment(\.presentationMode) var pm
}

struct RestaurantControlView: View {
    @EnvironmentObject var dataModel: RestaurantDataModel
    @StateObject var viewModel = RestaurantControlViewModel()
    
    var body: some View {
        RestaurantList()
            .environmentObject(dataModel)
            .listStyle(InsetListStyle())
            .sheet(
                isPresented: $viewModel.showAddNewRestaurantSheet,
                content: {
                    NewRestaurantSheet()
                        .environmentObject(dataModel)
                })
            .navigationBarItems(
                leading: Text("Restaurants"),
                trailing: Image(systemName: "plus.circle")
                    .onTapGesture {
                        viewModel.showAddNewRestaurantSheet = true
                    })
        }
    }

struct RestaurantList: View {
    
    @EnvironmentObject var dataModel: RestaurantDataModel
    
    var body: some View {
        List {
            ForEach(dataModel.restaurants, id:\.self) { restaurant in
                RestaurantRowView(viewModel: RestaurantRowViewModel(restaurant)).environmentObject(dataModel)
            }
        }
    }
}

struct RestaurantRowView: View {
    @EnvironmentObject var dataModel: RestaurantDataModel
    var viewModel: RestaurantRowViewModel
    var body: some View {
        HStack {
            Text(viewModel.restaurant.name!)
            Image(systemName: viewModel.getImage(dataModel.restaurants))
                .onTapGesture {
                    dataModel.isPrimary(viewModel.click())
                }
        }

    }
}

struct RestaurantControlView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantControlView()
    }
}
