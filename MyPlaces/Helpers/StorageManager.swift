//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Andriu on 28.01.2022.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {

    static func saveObject(_ place: Place) {

        try! realm.write {
            realm.add(place)
        }

    }
    static func deleteObject(_ place: Place) {

        try! realm.write {
            realm.delete(place)
        }
    }


}
