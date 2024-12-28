//
//  PresentTab.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 25/12/2024.
//

import SwiftUI

struct PresentTab: View {
    @Binding var selectedHistoryTab: GlobalEnumerations.SelectedHistoryTab
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Present")
            Button {
                selectedHistoryTab = .upcoming
            } label: {
                Text("Go to upcoming tab")
            }
        }
        //.tint(.red) //So that any links in this view isn't also changed to white by the tint in the TabView which changes not only the tab text to white because it's a link, but also any other link wrapped within it.
    }
}

struct PresentTabHolder: View {
    @State private var selectedHistoryTab: GlobalEnumerations.SelectedHistoryTab = .upcoming
    
    var body: some View {
        PresentTab(
            selectedHistoryTab: $selectedHistoryTab
        )
    }
}
#Preview {
    PresentTabHolder()
}
