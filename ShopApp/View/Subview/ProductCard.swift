//
//  ProductCard.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 13.06.2023.
//

import SwiftUI

struct ProductCard: View {
    
    var product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Spacer()
            VStack(alignment: .leading) {
                Text(product.categoryName)
                    .font(.system(size: 15))
                Text(product.productName)
                    .font(.system(size: 15).bold())
                Text(product.price)
                    .fontWeight(.bold)
            }
            .foregroundColor(.white)
            
            
        }
        .frame(width: 150, height: 200, alignment: .leading)
        .padding()
        .background(backgroundImage)
        .cornerRadius(16)
    }
}

struct CastomSubview_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: Product(imageName: "iPhone12Pro", categoryName: "Phones", productName: "iPhone 12 Pro", price: "$1099"))
    }
}

extension ProductCard {
    
    private var backgroundImage: some View {
        ZStack {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
            LinearGradient(gradient: Gradient(colors: [Color(white: 0, opacity: 0.4), .clear]),
                           startPoint: .bottom,
                           endPoint: .top)
        }
    }
    
}
