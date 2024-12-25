//
//  ContentView.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 24/12/2024.
//

import SwiftUI

/**
 * The order of NavigationStack and TabView in SwiftUI can significantly impact their behavior and the overall navigation experience within your app.
 * General Guidelines:
 * TabView within NavigationStack(Common Use Case)
 * This is the most common and recommended approach. It allows for a clear hierarchy:
 * The NavigationStack manages the overall navigation flow of the app.
 * The TabView provides a way to switch between different sections or modules within that navigation hierarchy.
 * Each tab can have its own navigation stack within it, enabling deeper levels of navigation within each section.
 */

struct ContentView: View {
    @EnvironmentObject private var navigationHistory: NavigationHistory
    
    var body: some View {
        NavigationStack(path: $navigationHistory.path) {
            HStack(alignment: .center, spacing: 0) {
                //Empty. Redirects to Splash() onAppear.
            }
            .onAppear {
                navigationHistory.path.append(GlobalEnumerations.Views.splash) //the path array state variable now has one item.
            }
            .navigationDestination(for: GlobalEnumerations.Views.self) { value in
                switch value {
                case .splash:
                    Splash()
                case .home:
                    Home()
                case .home2:
                    Home2()
                case .home3:
                    Home3()
                case .home4:
                    Home4()
                }
            }
            .navigationTitle("ContentView")
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(NavigationHistory())
}
