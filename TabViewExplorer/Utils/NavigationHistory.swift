//
//  NavigationHistory.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 24/12/2024.
//

import SwiftUI

class NavigationHistory: ObservableObject {
    
    @Published var path: NavigationPath = NavigationPath()
}
