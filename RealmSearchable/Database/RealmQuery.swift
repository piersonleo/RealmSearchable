//
//  RealmQuery.swift
//  RealmSearchable
//
//  Created by vCard Admin on 25/1/23.
//

import Foundation
import RealmSwift

class RealmQuery{
    
    func getAccountsList() -> Results<Account>{
        let defaultRealm = try! Realm()
        
        print("Accounts in db: \(defaultRealm.objects(Account.self).count)")

        let accountRealm = defaultRealm.objects(Account.self).sorted(byKeyPath: "name")
        return accountRealm
    }
    
    func addAccount(){
        let defaultRealm = try! Realm()
        let counter = defaultRealm.objects(Account.self).count+1
        
        let account = Account()
        account.id = UUID().uuidString
        account.name = "Account \(counter)"
        
        try! defaultRealm.write{
            defaultRealm.add(account)
        }
    }
}
