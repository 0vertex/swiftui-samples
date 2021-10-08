//
//  ContentView.swift
//  SwiftUI-UIKit
//
//  Created by Manish on 08/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        UIKitTagViewRepresentable(title: "UIKit-Tag",
                                  bgColor: .green)
            .frame(width: 150, height: 80, alignment: .leading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
