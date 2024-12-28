//
//  UpcomingTab.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 25/12/2024.
//

import SwiftUI

struct UpcomingTab: View {
    @Binding var selectedHistoryTab: GlobalEnumerations.SelectedHistoryTab
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Upcoming")
            Button {
                selectedHistoryTab = .past
            } label: {
                Text("Go to past tab")
            }
        }
        //.tint(.red) //So that any links in this view isn't also changed to white by the tint in the TabView which changes not only the tab text to white because it's a link, but also any other link wrapped within it.
    }
}

struct UpcomingTabHolder: View {
    @State private var selectedHistoryTab: GlobalEnumerations.SelectedHistoryTab = .past
    
    var body: some View {
        UpcomingTab(
            selectedHistoryTab: $selectedHistoryTab
        )
    }
}
#Preview {
    UpcomingTabHolder()
}
