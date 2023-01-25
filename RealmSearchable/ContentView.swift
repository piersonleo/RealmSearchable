//
//  ContentView.swift
//  RealmSearchable
//
//  Created by vCard Admin on 25/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading) {
                AccountList()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu(content: {
                        Button(action: {
                            RealmQuery().addAccount()
                        }) {
                            Label("Add account", systemImage: "person.badge.plus")
                        }
                    }, label: {Image(systemName: "plus")})
                 }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
