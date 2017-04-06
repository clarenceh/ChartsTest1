//
//  VisitorCount.swift
//  ChartsTest1
//
//  Created by Clarence Ho on 6/4/2017.
//  Copyright © 2017 SkywideSoft. All rights reserved.
//

import Foundation
import RealmSwift

class VisitorCount: Object {
    
    dynamic var date: Date = Date()
    dynamic var count: Int = Int(0)
    
    func save() {
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(self)
            }
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }
    
}
