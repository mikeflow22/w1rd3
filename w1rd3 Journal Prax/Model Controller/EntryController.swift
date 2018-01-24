//
//  EntryController.swift
//  w1rd3 Journal Prax
//
//  Created by Michael Flowers on 1/24/18.
//  Copyright © 2018 Michael Flowers. All rights reserved.
//

import Foundation
class EntryController {
    static var shared = EntryController()
    var entries: [Entry] = []
    
    //C
    //add function to add entries
    func addEntry(title: String, bodyText: String){
        let newEntry = Entry(title: title, bodyText: bodyText)
        entries.append(newEntry)
    }
    
    //R
    
    //U
    //add function to update an entry. what are we updating, title and bodytext which are model properties so we have to access them
    func updateEntry(title: String, bodyText: String, entry: Entry){
        entry.title = title
        entry.bodyText = bodyText
    }
    //D
    //create a function that will remove an entry from the entry array- need an index
    //CHEATED **************************                   *************************                  *************************************             *************************************
    func remove(entry: Entry){
        guard  let entryToRemove = entries.index(of: entry) else {return}
        entries.remove(at: entryToRemove)
    }
    
}




