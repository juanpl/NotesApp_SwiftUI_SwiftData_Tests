//
//  Item.swift
//  NotesApp_SwiftUI_SwiftData_Tests
//
//  Created by Juan Pablo Lasprilla Correa on 29/12/24.
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
