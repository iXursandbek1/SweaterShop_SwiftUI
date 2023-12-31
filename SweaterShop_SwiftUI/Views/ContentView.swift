//
//  ContentView.swift
//  SweaterShop_SwiftUI
//
//  Created by Xursandbek Qambaraliyev on 27/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar {
                CartButton(numberOFProducts: 1)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
