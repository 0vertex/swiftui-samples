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
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(userData.name)
                            .font(.system(size: 18, weight: .bold, design: Font.Design.rounded))
                            .foregroundColor(Color.white)
                        
                        HStack(spacing: 20) {
                            Text(userData.age.description)
                                .font(.system(size: 15))
                                .foregroundColor(Color.white)
                            
                            Spacer()
                            
                            Text(userData.category.rawValue)
                                .foregroundColor(Color.white)
                                .padding(5)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    .padding(10)
                    .background(Color.orange)
                    .cornerRadius(10)
                    
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
