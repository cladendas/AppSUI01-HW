//
//  ItemsViewModel.swift
//  AppSUI01-HW
//
//  Created by cladendas on 14.12.2021.
//

import Foundation

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
