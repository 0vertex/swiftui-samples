//
//  SwiftUITagView.swift
//  SwiftUI-UIKit
//
//  Created by Manish on 08/10/21.
//

import Foundation
import SwiftUI

struct SwiftUITagView: View {
    
    let title: String
    var color = Color.blue
    
    var body: some View {
        Text(title)
            .padding(10)
            .background(color)
            .foregroundColor(Color.white)
            .cornerRadius(5)
    }
    
}

struct SwiftUITagView_Preview: PreviewProvider {
    
    static var previews: some View {
        SwiftUITagView(title: "My Tag", color: .green)
    }
    
}
