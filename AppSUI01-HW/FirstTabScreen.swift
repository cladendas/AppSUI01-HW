//
//  FirstTabScreen.swift
//  AppSUI01-HW
//
//  Created by cladendas on 12.12.2021.
//

import SwiftUI

struct FirstTabScreen: View {
    
    @EnvironmentObject var itemsViewModel: ItemsViewModel
    @State var selectedTab: String = ""
    
    var body: some View {
        
        VStack {
            ActivityView()
            Button("Open Second Screen") {
                self.itemsViewModel.selectedTab = selectedTab
            }
        }
    }
}

struct FirstTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabScreen()
    }
}
