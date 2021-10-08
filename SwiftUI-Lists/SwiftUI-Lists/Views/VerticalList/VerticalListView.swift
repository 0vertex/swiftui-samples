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
                VUserView(userData: userData)
            }
        }
    }
    
}

struct VerticalListView_Preview: PreviewProvider {
    
    static var previews: some View {
        VerticalListView()
    }
    
}
