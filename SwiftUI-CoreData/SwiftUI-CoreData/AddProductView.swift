//
//  AddProductView.swift
//  SwiftUI-CoreData
//
//  Created by Manish on 09/10/21.
//

import Foundation
import SwiftUI

struct AddProductView: View {
    
    @State private var productName: String = ""
    @State private var productPrice: String = ""
    
    var didTapCancel: () -> Void
    var didTapSave: (_ productName: String, _ productPrice: String) -> Void
    
    var body: some View {
        VStack {
            TextField("Product Name: ", text: $productName)
                .padding()
                .border(Color.gray)
                .background(Color.white)
            
            TextField("Product Price: ", text: $productPrice)
                .padding()
                .border(Color.gray)
                .background(Color.white)
            
            Spacer()
            
            HStack {
                Button("Cancel") {
                    self.didTapCancel()
                }
                .padding()
                .background(Color.gray)
                .foregroundColor(Color.white)
                .cornerRadius(5)
                
                Spacer()
                
                Button("Save") {
                    self.didTapSave(self.productName, self.productPrice)
                }
                .padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(5)
                
            }
        }
    }
    
}

struct AddProductView_Preview: PreviewProvider {
    
    static var previews: some View {
        AddProductView(didTapCancel: {
            
        }, didTapSave: { (name, price) in
            
        })
    }
    
}
