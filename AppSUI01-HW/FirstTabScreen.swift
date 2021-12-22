//
//  FirstTabScreen.swift
//  AppSUI01-HW
//
//  Created by cladendas on 12.12.2021.
//

import SwiftUI

struct FirstTabScreen: View {
    
    @EnvironmentObject var itemsViewModel: ItemsViewModel
    @Binding var tabSelection: Int
    
    var body: some View {
        
        VStack {
            ActivityView()
            Button("Open Second Screen") {
                self.tabSelection = 1
                self.itemsViewModel.selectedTab = "FirstItem"
            }
        }
        
    }
}

struct FirstTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabScreen(tabSelection: .constant(1))
    }
}
