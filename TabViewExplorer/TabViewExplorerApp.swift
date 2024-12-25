//
//  TabViewExplorerApp.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 24/12/2024.
//

import SwiftUI

@main
struct TabViewExplorerApp: App {
    @StateObject private var navigationHistory: NavigationHistory = NavigationHistory()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(navigationHistory)
        }
    }
}
