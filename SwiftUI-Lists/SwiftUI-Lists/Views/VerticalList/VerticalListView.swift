//
//  VerticalListView.swift
//  SwiftUI-Lists
//
//  Created by Manish on 08/10/21.
//

import Foundation
import SwiftUI

struct VerticalListView: View {
    
    var body: some View {
        ScrollView {
            ForEach(UsersListSampleData.generate(), id: \.id) { userData in
                VStack {
                    HStack {
                        Text(userData.name)
                            .font(.system(size: 18, weight: .bold, design: .monospaced))
                        Spacer()
                    }
                    
                    HStack {
                        Text(userData.age.description.appending(" years old"))
                            .font(.callout)
                            .foregroundColor(.blue)
                        
                        Spacer()
                        
                        Text(userData.category.rawValue.capitalized)
                            .font(.subheadline.smallCaps())
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                .background(Color(UIColor.lightGray.withAlphaComponent(0.2)))
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 10))
            }
        }
    }
    
}

struct VerticalListView_Preview: PreviewProvider {
    
    static var previews: some View {
        VerticalListView()
    }
    
}
