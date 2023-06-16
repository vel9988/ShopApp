//
//  Product.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 15.06.2023.
//

import Foundation

struct Product: Identifiable, Hashable {
    var id = UUID()
    var imageName: String
    var categoryName: String
    var productName: String
    var price: String
    
}
