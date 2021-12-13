//
//  ContentView.swift
//  AppSUI01-HW
//
//  Created by cladendas on 12.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int = 0
    var body: some View {
        
        TabView(selection: $selection) {
            FirstTabScreen(tabSelection: .constant(1))
                .tabItem {
                    Label("FirstTabScreen", systemImage: "person.fill")
                }
                .tag(0)
            
            SecondTabScreen()
                .tabItem {
                    Label("SecondTabScreen", systemImage: "person.2.fill")
                }
                .tag(0)
            
            ThirdTabScreen()
                .tabItem {
                    Label("ThirdTabScreen", systemImage: "person.3.fill")
                }
                .tag(0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
