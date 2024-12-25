//
//  Home4.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 25/12/2024.
//

import SwiftUI

struct Home4: View {
    @State private var selectedHistoryTab: GlobalEnumerations.SelectedHistoryTab = .default_value
    
    let history_tabs: [HistoryTab] = [
        HistoryTab(id: .past, title: "Past"),
        HistoryTab(id: .present, title: "Present"),
        HistoryTab(id: .upcoming, title: "Upcoming")
    ]
    
    var body: some View {
        VStack {
            TabView(selection: $selectedHistoryTab) {
                ForEach(history_tabs, id: \.id) { history_tab in
                    if history_tab.id == GlobalEnumerations.SelectedHistoryTab.past {
                        Button {
                            selectedHistoryTab = .present
                        } label: {
                            PastTab()
                        }
                        .tabItem {
                            Text(history_tab.title)
                        }
                        .tag(history_tab.id)
                    } else if history_tab.id == GlobalEnumerations.SelectedHistoryTab.present {
                        Button {
                            selectedHistoryTab = .upcoming
                        } label: {
                            PresentTab()
                        }
                        .tabItem {
                            Text(history_tab.title)
                        }
                        .tag(history_tab.id)
                    } else if history_tab.id == GlobalEnumerations.SelectedHistoryTab.upcoming {
                        Button {
                            selectedHistoryTab = .past
                        } label: {
                            UpcomingTab()
                        }
                        .tabItem {
                            Text(history_tab.title)
                        }
                        .tag(history_tab.id)
                    }
                }
            }
        } //VStack
        .toolbar { //Replaces the soon to be deprecated .navigationBarItems(trailing:)
            ToolbarItem(placement: .topBarTrailing) {
                Menu {
                    //These Views are stacked from bottom to top starting with the 'Log Out' button being at the bottom.
                    Button {
                        
                    } label: {
                        Text("Log Out")
                    }
                    //Divider() //The divider isn't a necessity.
                    Button {
                        
                    } label: {
                        Text("Order History")
                    }
                    Button {
                        
                    } label: {
                        Text("New Order")
                    }
                    Button {
                        
                    } label: {
                        Text("Cancel Order")
                    }
                    Button {
                        
                    } label: {
                        Text("Account Settings")
                    }
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color.black)
                        .rotationEffect(.degrees(90)) //Rotate 90 degrees so the ellipsis stands instead of sitting.
                }
                .menuStyle(.automatic) //default menu style.
            }
        }
    }
}

#Preview {
    Home4()
}
