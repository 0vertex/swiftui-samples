//
//  HorizontalListView.swift
//  SwiftUI-Lists
//
//  Created by Manish on 08/10/21.
//

import Foundation
import SwiftUI

struct HorizontalListView: View {
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(UsersListSampleData.generate(), id: \.id) { userData in
                    HUserView(userData: userData)
                }
            }
        }//.frame(height: 90)
        
    }
    
}

struct HorizontalListView_Preview: PreviewProvider {
    
    static var previews: some View {
        HorizontalListView()
    }
    
}
