//
//  Entry.swift
//  w1rd3 Journal Prax
//
//  Created by Michael Flowers on 1/24/18.
//  Copyright © 2018 Michael Flowers. All rights reserved.
//

import Foundation
class Entry : Equatable {
    static func ==(lhs: Entry, rhs: Entry) -> Bool {
        return lhs.title == rhs.title && lhs.bodyText == rhs.bodyText && lhs.timeStamp == rhs.timeStamp
    }
    
    var title: String
    var bodyText: String
    var timeStamp: Date
    
    init(title: String, bodyText: String) {
        self.title = title
        self.bodyText = bodyText
        self.timeStamp = Date()
    }
    
}
