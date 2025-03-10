//
//  InstagramTestApp.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import SwiftUI
import SwiftData

@main
struct InstagramTestApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([StoryBundle.self])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
        
            ContentView(modelContext: sharedModelContainer.mainContext)
        }
    }
}
