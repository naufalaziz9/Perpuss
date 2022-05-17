//
//  PerpusApp.swift
//  Perpus
//
//  Created by naufalazizz on 08/05/22.
//

import SwiftUI

@main
struct PerpusApp: App {
    let persistenceContainer = CDManager.shared
    var body: some Scene {
        WindowGroup {
            TambahGambar(title: "Product Image", image: .constant(nil))
//            TabBar()
//                .environment(\.managedObjectContext,persistenceContainer.persistentContainer.viewContext)
        }
    }
}
