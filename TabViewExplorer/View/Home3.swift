//
//  Home3.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 25/12/2024.
//

import SwiftUI

struct Home3: View {
    let view_tabs: [ViewTab] = [
        ViewTab(title: "About Us", icon: "globe"),
        ViewTab(title: "Profile", icon: "person"),
        ViewTab(title: "Settings", icon: "gearshape")
    ]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(view_tabs) { view_tab in
                    if view_tab.title == "About Us" {
                        AboutUsTab()
                            .tabItem {
                                Label(view_tab.title, systemImage: view_tab.icon)
                            }
                            .tag(view_tab.title) //Used to associate each content view with the correct tab and allows for tabs to be selected programatically by changing the selectedTab state property.
                    } else if view_tab.title == "Profile" {
                        ProfileTab()
                            .tabItem {
                                Label(view_tab.title, systemImage: view_tab.icon)
                            }
                            .tag(view_tab.title)
                    } else if view_tab.title == "Settings" {
                        SettingsTab()
                            .tabItem {
                                Label(view_tab.title, systemImage: view_tab.icon)
                            }
                            .tag(view_tab.title)
                    }
                }
            }
        } //VStack
        .padding()
        .navigationTitle("Home")
        .navigationBarBackButtonHidden(true)
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
    Home3()
}
