//
//  Splash.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 24/12/2024.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        NavigationLink("Go to Home...", value: GlobalEnumerations.Views.home4)
            .navigationTitle("Splash")
            .navigationBarBackButtonHidden(true)
            .onAppear {
                //navigationHistory.path = NavigationPath([GlobalEnumerations.Views.splash, GlobalEnumerations.Views.home])
            }
    }
}

#Preview {
    Splash()
}
