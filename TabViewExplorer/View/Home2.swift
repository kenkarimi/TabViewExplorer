//
//  Home2.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 25/12/2024.
//

import SwiftUI

struct Home2: View {
    @State private var show_tabs: Bool = true
    @State private var selectedFoodTab: GlobalEnumerations.FoodTab = .milk
    
    var body: some View {
        ZStack { //When the tabs are visible, the tab content should appear on top of this views content.
            Text("Home")
            if show_tabs {
                TabView(selection: $selectedFoodTab) {
                    Button {
                        selectedFoodTab = .honey
                    } label: {
                        Text("Milk Content. Show Honey Content") //Content view with content shown when tab is clicked.
                    }
                    .tabItem {
                        Label("Milk", systemImage: "star")
                    }
                    .tag(GlobalEnumerations.FoodTab.milk) //Used to associate each content view with the correct tab and allows for tabs to be selected programatically by changing the selectedTab state property.
                    Button {
                        selectedFoodTab = .milk
                    } label: {
                        Text("Honey Content. Show Milk Content")
                    }
                    .tabItem {
                        Label("Honey", systemImage: "circle")
                    }
                    .tag(GlobalEnumerations.FoodTab.honey) //Used to associate each content view with the correct tab and allows for tabs to be selected programatically by changing the selectedTab state property.
                } //TabView
            } //COnditional
        } //ZStack
        .navigationTitle("Home")
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
    Home2()
}
