//
//  ModelContainer.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import Foundation
import SwiftData


extension ModelContainer {
    static let sample: ModelContainer = {
        do {
            let schema = Schema([StoryBundle.self])
            let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
            let container = try ModelContainer(for: schema, configurations: [configuration])
            Task { @MainActor in
                StoryBundle.insertSampleData(modelContext: container.mainContext)
            }
            return container
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
}


@MainActor
let previewContainer: ModelContainer = {
    do {
        let container = try ModelContainer(
            for: StoryBundle.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        let modelContext = container.mainContext
        if try modelContext.fetch(FetchDescriptor<StoryBundle>()).isEmpty {
            StoryBundle.insertSampleData(modelContext: container.mainContext)
        }

        return container
    } catch {
        fatalError("❌ Failed to create container: \(error)")
    }
}()

