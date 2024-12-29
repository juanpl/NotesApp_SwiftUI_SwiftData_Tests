//
//  NotesApp_SwiftUI_SwiftData_TestsApp.swift
//  NotesApp_SwiftUI_SwiftData_Tests
//
//  Created by Juan Pablo Lasprilla Correa on 29/12/24.
//

import SwiftUI
import SwiftData

@main
struct NotesApp_SwiftUI_SwiftData_TestsApp: App {
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
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
