//
//  MailTab.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 26/12/2024.
//

import SwiftUI

struct GenderTab { //Does not conform to Identifiable like ViewTab.swift & we don't use Hashable and Codable like we did in the Landmarks project because we're not moving data between this structure and a data file/source.
    //Not having Identifiable conformance means we have to use the .id property in the closure in Home.swift in order to specify each element dynamically like so: "ForEach(gender_tabs, id: \.id) { gender_tab in" with the "\.id" serving as the unique .id property identifier and this struct not conforming to Identifiable like so: "struct GenderTab {".
    //This way, we have to use the .id property in the closure in LandmarkList.Swift in order to specify each element dynamically.
    let id: GlobalEnumerations.SelectedGenderTab
    let title: String
    let icon: String
}
