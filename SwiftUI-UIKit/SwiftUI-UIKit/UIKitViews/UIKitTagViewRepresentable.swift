//
//  UIKitTagViewRepresentable.swift
//  SwiftUI-UIKit
//
//  Created by Manish on 08/10/21.
//

import Foundation
import SwiftUI

final class UIKitTagViewRepresentable: UIViewRepresentable {
    
    let title: String
    let bgColor: UIColor
    
    init(title: String, bgColor: UIColor = .blue) {
        self.title = title
        self.bgColor = bgColor
    }
    
    func makeUIView(context: Context) -> UIKitTagView {
        let tagView =  UIKitTagView(title: self.title, bgColor: bgColor)
        tagView.setupViews()
        
        return tagView
    }
    
    func updateUIView(_ uiView: UIKitTagView, context: Context) {
        uiView.setupViews()
    }
    
}
