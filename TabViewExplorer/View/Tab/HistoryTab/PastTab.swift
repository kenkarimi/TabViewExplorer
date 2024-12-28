//
//  PastTab.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 25/12/2024.
//

import SwiftUI

struct PastTab: View {
    @Binding var selectedHistoryTab: GlobalEnumerations.SelectedHistoryTab
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Past")
            Button {
                selectedHistoryTab = .present
            } label: {
                Text("Go to present tab")
            }
        }
        //.tint(.red) //So that any links in this view isn't also changed to white by the tint in the TabView which changes not only the tab text to white because it's a link, but also any other link wrapped within it.
    }
}

struct PastTabHolder: View {
    @State private var selectedHistoryTab: GlobalEnumerations.SelectedHistoryTab = .default_value
    
    var body: some View {
        PastTab(
            selectedHistoryTab: $selectedHistoryTab
        )
    }
}
#Preview {
    PastTabHolder()
}
