//
//  Home.swift
//  MenuButtonExplorer
//
//  Created by Kennedy Karimi on 04/11/2024.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        VStack {
            //You can have this in the middle of the View as well.
            TabView {
                Text("Tab 1 Content") //Content view with content shown when tab is clicked.
                    .tabItem {
                        Label("One", systemImage: "star")
                    }
                Text("Tab 2 Content")
                    .tabItem {
                        Label("Two", systemImage: "circle")
                    } //Used to associate each content view with the correct tab.
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
    Home()
}
