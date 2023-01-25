//
//  AccountList.swift
//  RealmSearchable
//
//  Created by vCard Admin on 25/1/23.
//

import SwiftUI
import RealmSwift

struct AccountList: View {

    @ObservedResults(
        Account.self,
        sortDescriptor: SortDescriptor(keyPath: "name", ascending: true)
    ) var accounts
    
    @State private var searchFilter = ""
    
    var body: some View {

        NavigationStack {
            List(accounts) { account in
                NavigationLink{
                    
                } label: {
                    AccountRow(account: account)
                }
            }
            .searchable(text: $searchFilter,
                        collection: $accounts,
                        keyPath: \.name) {
                ForEach(accounts) { accountsFiltered in

                }
            }
        }
        .navigationTitle("Accounts")
    }
}


struct AccountList_Previews: PreviewProvider {

    static var previews: some View {

        AccountList()

    }

}
