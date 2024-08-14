//
//  Item.swift
//  SwiftUIBasicEx
//
//  Created by 김지태 on 8/14/24.
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
