//
//  KitchenHackApp.swift
//  KitchenHack
//
//  Created by Daniel Watson on 04/08/2021.
//


import SwiftUI
import CoreData

@main
struct KitchenHackExecApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
//    Create instance of the main app model
    @StateObject var model = KitchenHackModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .environmentObject(model.restaurantModel)
        }
        .onChange(of: scenePhase) { _ in
            try? pC.viewContext.save()
        }
    }
}
// Create core Data persistant Stores
    var pC: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "KitchenHackExecApp")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        return container
    }()
    func saveContext() {
        let context = pC.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}




