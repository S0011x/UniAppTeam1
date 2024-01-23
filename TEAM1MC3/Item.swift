//
//  Item.swift
//  TEAM1MC3
//
//  Created by suha alrajhi on 11/07/1445 AH.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
