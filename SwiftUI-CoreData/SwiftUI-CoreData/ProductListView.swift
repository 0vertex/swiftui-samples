//
//  ContentView.swift
//  SwiftUI-CoreData
//
//  Created by Manish on 09/10/21.
//

import SwiftUI

struct ProductListView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @FetchRequest(
        entity: CD_ProductEntity.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \CD_ProductEntity.name, ascending: true)]
    ) var products: FetchedResults<CD_ProductEntity>
    
    @State private var shouldShowAddProductView = false
    
    var body: some View {
        ZStack {
            
            // List of product
            VStack {
                List {
                    ForEach(products) { product in
                        // Product item view
                        VStack(alignment: .leading) {
                            Text(product.name)
                            Text("Rs \(product.price.description)")
                        }
                    }.onDelete(perform: deleteProduct(at:))
                }
                
                
                Button("Add Product") {
                    self.shouldShowAddProductView = true
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(Color.white)
            }
            
            // Add Product model view
            if self.shouldShowAddProductView {
                VStack {
                    AddProductView(didTapCancel: {
                        self.shouldShowAddProductView = false
                    }, didTapSave: { (name, price) in
                        self.shouldShowAddProductView = false
                        
                        self.addProduct(named: name, price: Double(price) ?? 0)
                    })
                        .frame(height: 180)
                }
                .padding()
                .frame(maxHeight: .infinity) // to make VStack full screen
                .background(Color.black.opacity(0.3))
            }
            
        }
    }
    
}

// MARK: - Core Data
extension ProductListView {
    
    func saveContext() {
        do {
            try managedObjectContext.save()
        } catch {
            print("Error saving managed object context: \(error)")
        }
    }
    
    func addProduct(named productName: String, price: Double) {
        // Handle error
        guard !productName.isEmpty, price > 0 else { assertionFailure(); return }
        
        let newProduct = CD_ProductEntity(context: self.managedObjectContext)
        newProduct.id = UUID()
        newProduct.name = productName
        newProduct.price = price
        
        self.saveContext()
    }
    
    func deleteProduct(at indexSets: IndexSet) {
        indexSets.forEach { index in
            let product = self.products[index]
            
            self.managedObjectContext.delete(product)
        }
        
        self.saveContext()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
