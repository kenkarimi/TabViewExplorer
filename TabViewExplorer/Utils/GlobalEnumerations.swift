//
//  GlobalEnumerations.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 24/12/2024.
//

import SwiftUI

struct GlobalEnumerations {
    enum Views: Hashable { //Whatever is assigned to the parameter navigationDestination, if not a traditional data type(String,Int etc) must conform to the Hashable protocol.
        case splash, home, home2, home3, home4
    }
    
    enum SelectedFoodTab {
        case milk, honey, default_value
    }
    
    enum SelectedHistoryTab {
        case past, present, upcoming, default_value
    }
}
