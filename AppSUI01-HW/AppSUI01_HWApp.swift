//
//  AppSUI01_HWApp.swift
//  AppSUI01-HW
//
//  Created by cladendas on 12.12.2021.
//

import SwiftUI

@main
struct AppSUI01_HWApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ItemsViewModel())
        }
    }
}
