//
//  ActivityViewComponent.swift
//  AppSUI01-HW
//
//  Created by cladendas on 13.12.2021.
//

import UIKit
import SwiftUI

public struct ActivityView: UIViewRepresentable {
    
    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        UIActivityIndicatorView(style: .large)
    }
    
    public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.startAnimating()
    }
}
