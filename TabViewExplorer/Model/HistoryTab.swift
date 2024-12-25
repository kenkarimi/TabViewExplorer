//
//  HistoryTab.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 25/12/2024.
//

import SwiftUI

struct HistoryTab { //Does not conform to Identifiable like Tab.swift & we don't use Hashable and Codable like we did in the Landmarks project because we're not moving data between this structure and a data file/source.
    //Not having Identifiable conformance means we have to use the .id property in the closure in Home.swift in order to specify each element dynamically like so: "ForEach(history_tabs, id: \.id) { history_tab in" with the "\.id" serving as the unique .id property identifier and this struct not conforming to Identifiable like so: "struct HistoryTab {".
    //This way, we have to use the .id property in the closure in LandmarkList.Swift in order to specify each element dynamically.
    let id: GlobalEnumerations.SelectedHistoryTab //Generates a universally unique value to identify types, interfaces and other items. In the Landmarks project, we didn't have to assign UUID() to the id because we were mapping out every value to the landmarkData file which is how we got a unique id.
    let title: String
}
