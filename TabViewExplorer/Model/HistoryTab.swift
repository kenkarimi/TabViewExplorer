//
//  HistoryTab.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 25/12/2024.
//

import SwiftUI

struct HistoryTab { //Does not conform to Identifiable like ViewTab.swift & we don't use Hashable and Codable like we did in the Landmarks project because we're not moving data between this structure and a data file/source.
    //Not having Identifiable conformance means we have to use the .id property in the closure in Home.swift in order to specify each element dynamically like so: "ForEach(history_tabs, id: \.id) { history_tab in" with the "\.id" serving as the unique .id property identifier and this struct not conforming to Identifiable like so: "struct HistoryTab {".
    let id: GlobalEnumerations.HistoryTab
    let title: String
}
