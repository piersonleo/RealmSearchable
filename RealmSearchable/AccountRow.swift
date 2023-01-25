//
//  AccountRow.swift
//  RealmSearchable
//
//  Created by vCard Admin on 25/1/23.
//

import SwiftUI
import RealmSwift

struct AccountRow: View {

    @ObservedRealmObject var account: Account

    var body: some View {

        HStack {
            Text(account.name)
            Spacer()
        }

    }

}


struct AccountRow_Previews: PreviewProvider {

    static var previews: some View {

        AccountRow(account: accounts[0])

    }

}
