//
//  Tab.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 24/12/2024.
//

import SwiftUI

struct ViewTab: Identifiable { //Has to conform to Identifiable in order to be used in the ForEach. We don't use Hashable and Codable like we did in the Landmarks project because we're not moving data between this structure and a data file/source.
    //Adding Identifiable conformance means we don't have to use the .id property in the closure in Home.swift in order to specify each element dynamically. Before, the closure used to be "ForEach(view_tabs, id: \.title) { view_tab in" with the "\.title" serving as the unique .id property identifier and this struct not conforming to Identifiable like so: "struct ViewTab {". The "id" variable below also didn't exist. Now, with Identifiable conformance("struct ViewTab: Identifiable {"), the closure changes to "ForEach(view_tabs) { view_tab in". The .id property(".id: \.title") is no longer needed in the closure.
    let id: UUID = UUID() //Generates a universally unique value to identify types, interfaces and other items. In the Landmarks project, we didn't have to assign UUID() to the id because we were mapping out every value to the landmarkData file which is how we got a unique id.
    let title: String
    let icon: String
}
