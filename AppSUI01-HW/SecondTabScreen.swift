//
//  SecondTabScreen.swift
//  AppSUI01-HW
//
//  Created by cladendas on 12.12.2021.
//

import SwiftUI

struct Item: Identifiable {
    var id: String { name }
    var name: String
}

final class ItemsViewModel: ObservableObject {
    
    @Published var selectedTab: String? = nil
    @Published private(set) var items = [
        Item(name: "FirstItem"),
        Item(name: "SecondItem"),
        Item(name: "ThirdItem")
    ]
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
        List {
            ForEach(itemsViewModel.items) { item in
                NavigationLink(tag: item.name,
                               selection: $itemsViewModel.selectedTab,
                               destination: { ItemView(title: item.name) },
                               label: { Label(item.name, systemImage: "person.2.wave.2.fill") })
            }
        }
    }
}

struct SecondTabScreen: View {
    
    private var title: String = "SecondTabScreen"
    
    @ObservedObject var itemsForSecondScreen: ItemsForSecondScreen = .init()
    
    var body: some View {
        NavigationView() {
            ItemList()
                .environmentObject(itemsForSecondScreen)
                .navigationBarTitle(title)
        }
    }
}

struct SecondTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabScreen()
    }
}
