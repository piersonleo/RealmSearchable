//
//  Account.swift
//  RealmSearchable
//
//  Created by vCard Admin on 25/1/23.
//

import RealmSwift

class Account: Object, ObjectKeyIdentifiable{
    @Persisted(primaryKey: true) var id: String
    @Persisted var name: String = ""
}


