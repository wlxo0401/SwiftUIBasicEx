//
//  SwiftUIBasicExApp.swift
//  SwiftUIBasicEx
//
//  Created by 김지태 on 8/14/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftUIBasicExApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView(tabViews: [.home, .study, .more])
        }
        .modelContainer(sharedModelContainer)
    }
}
