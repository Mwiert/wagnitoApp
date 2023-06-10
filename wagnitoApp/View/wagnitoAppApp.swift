//
//  wagnitoAppApp.swift
//  wagnitoApp
//
//  Created by Mert Şahin on 10.06.2023.
//

import SwiftUI
import Firebase

@main
struct wagnitoAppApp: App {
    let persistenceController = PersistenceController.shared

    init(){
        FirebaseApp.configure()
        print("Firebase Configured!")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
