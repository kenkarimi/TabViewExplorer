//
//  Home6.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 27/12/2024.
//

import SwiftUI

struct Home6: View {
    @State private var show_tabs: Bool = true
    @State private var selectedGenderTab: GlobalEnumerations.GenderTab = .male //We can still use cases which aren't enumerated with Integers.
    private let genderTabs: [GenderTab] = [
        GenderTab(id: .male, title: "Male", icon: "figure.dress.line.vertical.figure"),
        GenderTab(id: .female, title: "Female", icon: "figure.dress.line.vertical.figure"),
        GenderTab(id: .other, title: "Other", icon: "figure.dress.line.vertical.figure")
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) { //When the tabs are visible, the tab content should appear on top of this views content.
            Text("Home")
            if show_tabs {
                TabView(selection: $selectedGenderTab) {
                    MaleTab()
                        .tag(GlobalEnumerations.GenderTab.male) //Used to associate each content view with the correct tab and allows for tabs to be selected programatically by changing the selectedMailTab state property.
                    FemaleTab()
                        .tag(GlobalEnumerations.GenderTab.female)
                    OtherTab()
                        .tag(GlobalEnumerations.GenderTab.other)
                }
                
                HStack {
                    ForEach(genderTabs, id: \.id) { genderTab in
                        Button {
                            selectedGenderTab = genderTab.id
                        } label: {
                            CustomTabItem(title: genderTab.title, icon: genderTab.icon, isActive: selectedGenderTab == genderTab.id ? true : false)
                        }
                    }
                }
                .frame(height: 60)
                .background(.red.opacity(1.0))
            } //Conditional.
        } //ZStack
        .navigationTitle("Home6")
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

extension Home6 {
    func CustomTabItem(title: String, icon: String, isActive: Bool) -> some View {
        VStack {
            Rectangle()
                .fill(isActive ? Color.white : Color.clear) //clear reveals the color parent component underneath(VStack). If that component also doesn't have a color, then it takes on the color of its grandparent(HStack with ForEach)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 8)
                //.border(Color.red, width: 1)
                .cornerRadius(2, corners: .bottomLeft)
                .cornerRadius(2, corners: .bottomRight)
                .animation(.easeInOut(duration: 0.4), value: isActive) //value is the name of the state variable that triggers the animation.
            HStack(spacing: 10) {
                Image(systemName: icon)
                    .font(Font.system(size: 20))
                    .foregroundColor(isActive ? Color.white : Color.black)
                    //.symbolRenderingMode(SymbolRenderingMode.hierarchical)
                Text(title)
                    .font(Font.system(size: 16, weight: isActive ? .bold : .regular))
                    .foregroundColor(isActive ? Color.white : Color.black)
            } //HStack
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60)
            .animation(.easeInOut(duration: 0.4), value: isActive) //value is the name of the state variable that triggers the animation.
        } //VStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60)
        .background(Color.clear) //clear reveals the color underneath, which is the red color assigned to the background(HStack with ForEach), meaning that this entire component doesn't actually have it's own color. It takes on the colour of its parent.
    }
}

#Preview {
    Home6()
}
