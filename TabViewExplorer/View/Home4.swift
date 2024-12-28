//
//  Home4.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 25/12/2024.
//

import SwiftUI

//In this apprach, the TabView contains both the content and the actual tabs. This approach isn't very flexible. You can only change the tint/accent color & the unselected item tint color but the background is very inflexible.

struct Home4: View {
    @State private var show_tabs: Bool = true
    @State private var selectedHistoryTab: GlobalEnumerations.SelectedHistoryTab = .upcoming
    
    let history_tabs: [HistoryTab] = [
        HistoryTab(id: .past, title: "Past"),
        HistoryTab(id: .present, title: "Present"),
        HistoryTab(id: .upcoming, title: "Upcoming")
    ]
    
    var body: some View {
        ZStack { //When the tabs are visible, the tab content should appear on top of this views content.
            Text("Home")
            if show_tabs {
                TabView(selection: $selectedHistoryTab) {
                    ForEach(history_tabs, id: \.id) { history_tab in
                        if history_tab.id == GlobalEnumerations.SelectedHistoryTab.past {
                            PastTab(
                                selectedHistoryTab: $selectedHistoryTab
                            )
                            .tabItem {
                                Text(history_tab.title)
                            }
                            .tag(history_tab.id) //Used to associate each content view with the correct tab and allows for tabs to be selected programatically by changing the selectedHistoryTab state property.
                        } else if history_tab.id == GlobalEnumerations.SelectedHistoryTab.present {
                            PresentTab(
                                selectedHistoryTab: $selectedHistoryTab
                            )
                            .tabItem {
                                Text(history_tab.title)
                            }
                            .tag(history_tab.id)
                        } else if history_tab.id == GlobalEnumerations.SelectedHistoryTab.upcoming {
                            UpcomingTab(
                                selectedHistoryTab: $selectedHistoryTab
                            )
                            .tabItem {
                                Text(history_tab.title)
                            }
                            .tag(history_tab.id)
                        }
                    } //ForEach
                } //TabView
                .accentColor(Color.red) //Alternative: .tint()
                //.tint(.red) //Could be white with a red toolbar background.
                //.tabViewStyle(.page) //Makes the tabs swipeable pages with no tab bar.
                .onAppear {
                    UITabBar.appearance().unselectedItemTintColor = .gray
                }
            } //Conditional
        } //ZStack
        .navigationTitle("Home4")
        .navigationBarBackButtonHidden(false)
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
