//
//  Test.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 13.06.2023.
//

import SwiftUI

struct Test: View {
    
    var scrollName: String = "Latest"
    var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text(scrollName)
                    .font(.headline)
                Spacer()
                Button("View all") {
                    
                }
                .foregroundColor(.gray)
            }
            .padding(.leading)
            .padding(.trailing)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    Button {
                        
                    } label: {
                        ProductCard(product: viewModel.phonesProduct[0])
                    }
                    
                    Button {
                        
                    } label: {
                        ProductCard(product: viewModel.phonesProduct[1])
                    }
                    
                    Button {
                        
                    } label: {
                        ProductCard(product: viewModel.phonesProduct[2])
                    }



                    
                }
                .padding(.leading)
                Spacer()
            }
            
            
        }
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
