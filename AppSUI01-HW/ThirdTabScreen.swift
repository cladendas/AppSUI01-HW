//
//  ThirdTabScreen.swift
//  AppSUI01-HW
//
//  Created by cladendas on 12.12.2021.
//

import SwiftUI

struct ThirdTabScreen: View {
    
    @State var isItemForThirdScreenShowed: Bool = false
    
    var body: some View {
        Button {
            isItemForThirdScreenShowed.toggle()
        } label: {
            Label("GO", systemImage: "cursorarrow.click")
        }.sheet(isPresented: $isItemForThirdScreenShowed) {
            ItemForThirdScreen()
        }

    }
}

struct ItemForThirdScreen: View {
    var body: some View {
        Label("ItemForThirdScreen", systemImage: "person.fill.and.arrow.left.and.arrow.right")
    }
}

struct ThirdTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabScreen()
    }
}
