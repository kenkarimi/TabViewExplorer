//
//  GlobalEnumerations.swift
//  TabViewExplorer
//
//  Created by Kennedy Karimi on 24/12/2024.
//

import SwiftUI

struct GlobalEnumerations {
    enum Views: Hashable { //Whatever is assigned to the parameter navigationDestination, if not a traditional data type(String,Int etc) must conform to the Hashable protocol.
        case splash, home, home2, home3, home4, home5, home6
    }
    
    enum SelectedFoodTab {
        case milk, honey, default_value
    }
    
    enum SelectedHistoryTab {
        case past, present, upcoming, default_value
    }
    
    enum SelectedMailTab: Int, CaseIterable { //Conforming to Int means all cases have Integer values. CaseIterable means you have to iterate over enum cases.
        case inbox = 0, sent, drafts
        
        //Instead of having a model in the Model folder as we've done with the other examples, we have it here, which is why this enum extends CaseIterable.
        var title: String {
            switch self {
            case .inbox:
                return "Inbox"
            case .sent:
                return "Sent"
            case .drafts:
                return "Drafts"
            }
        }
        
        var icon: String {
            switch self {
            case .inbox:
                return "envelope.open.fill"
            case .sent:
                return "envelope.fill"
            case .drafts:
                return "envelope.badge.fill"
            }
        }
    }
    
    enum SelectedGenderTab {
        case male, female, other
    }
    
}
