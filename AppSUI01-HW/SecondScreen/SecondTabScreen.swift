//
//  SecondTabScreen.swift
//  AppSUI01-HW
//
//  Created by cladendas on 12.12.2021.
//

import SwiftUI

struct SecondTabScreen: View {
    
    private var title: String = "SecondTabScreen"
    
    var body: some View {
        NavigationView() {
            ItemList()
                .navigationBarTitle(title)
        }
    }
}

struct ItemView: View {

    var title: String

    var body: some View {
        Label(title, systemImage: "clock")
    }
}

struct ItemList: View {
    
    @EnvironmentObject var itemsViewModel: ItemsViewModel
    
    var body: some View {
        List(itemsViewModel.items) { item in
                NavigationLink(tag: item.name,
                               selection: $itemsViewModel.selectedTab,
                               destination: { ItemView(title: item.name) },
                               label: { Label(item.name, systemImage: "person.2.wave.2.fill") })
        }
    }
}

struct SecondTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabScreen()
    }
}
