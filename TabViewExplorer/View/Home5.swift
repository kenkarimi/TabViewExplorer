//
//  Home5.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 26/12/2024.
//

import SwiftUI

//In this approach, the TabView contains the actual content and then the tabs appear below. This way, we separate the tabs from the actual tab content. We don't use tabIem because they aren't as customizable. Instead, we make our own custom tabs.
struct Home5: View {
    @State private var show_tabs: Bool = true
    @State private var selectedMailTab: Int = 0 //We use integer numbers because the enum is enumerated with Integers from 0, but it's still possible to use the cases themselves because they're one and the same.
    
    var body: some View {
        ZStack(alignment: .bottom) { //When the tabs are visible, the tab content should appear on top of this views content.
            Text("Home")
            if show_tabs {
                TabView(selection: $selectedMailTab) {
                    InboxTab()
                        .tag(0) //Used to associate each content view with the correct tab and allows for tabs to be selected programatically by changing the selectedMailTab state property.
                    SentTab()
                        .tag(1)
                    DraftsTab()
                        .tag(2)
                }
                
                HStack {
                    ForEach(GlobalEnumerations.SelectedMailTab.allCases, id: \.self) { item in
                        Button { //The .tabItem usually has its own mechanism for changing the selectedMailTab to the one clicked but since we're using custom tabs, we have to use a button to manually change selectedMailTab to the intended tag value.
                            selectedMailTab = item.rawValue //The corresponding value of the raw type.
                        } label: {
                            CustomTabItem(title: item.title, icon: item.icon, isActive: selectedMailTab == item.rawValue)
                        }
                    }
                }
                .padding(6)
                .frame(height: 70)
                .background(.red.opacity(0.2))
                .cornerRadius(35)
                .padding([.leading, .trailing], 26)
            } //Conditional
        } //ZStack
        .navigationTitle("Home5")
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

extension Home5 {
    func CustomTabItem(title: String, icon: String, isActive: Bool) -> some View {
        HStack(spacing: 10) {
            Spacer()
            Image(systemName: icon)
                .font(Font.system(size: 20))
                .foregroundColor(isActive ? Color.white : Color.black)
                .symbolRenderingMode(SymbolRenderingMode.hierarchical)
            if isActive {
                Text(title)
                    .font(Font.system(size: 14, weight: .bold))
                    .foregroundColor(isActive ? Color.white : Color.gray)
            }
            Spacer()
        } //HStack
        .frame(width: isActive ? .infinity : 60, height: 60)
        .background(isActive ? Color.red.opacity(0.4) : .clear)
        .cornerRadius(30)
    }
}

#Preview {
    Home5()
}
