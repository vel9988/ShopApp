//
//  ProductAPI.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 15.06.2023.
//

import Foundation

enum CategoryProduct {
    case latest
    case sneakers
    case phones
    case technics
}

final class ProductAPI {
    static func getProducts(_ category: CategoryProduct) -> [Product] {
        switch category {
        case .latest:
            return [
                Product(imageName: "iPhone12Pro", categoryName: "Phones", productName: "iPhone 12 Pro", price: "$1099"),
                Product(imageName: "PlayStation", categoryName: "Technics", productName: "PlayStation 5", price: "$899"),
                Product(imageName: "Xbox", categoryName: "Technic", productName: "Xbox X", price: "$899"),
                Product(imageName: "Nike", categoryName: "Sneakers", productName: "Nike V5", price: "$299")
            ]
        case .phones:
            return [
                Product(imageName: "iPhone12Pro", categoryName: "Phones", productName: "iPhone 12P Pro", price: "$1099"),
                Product(imageName: "OnePlus10Pro", categoryName: "Phones", productName: "OnePlus 10 Pro", price: "$999"),
                Product(imageName: "SamsungGalaxy", categoryName: "Phones", productName: "Samsung Galaxy", price: "$899"),
                Product(imageName: "XiaomiRedmiNote10", categoryName: "Phones", productName: "Xiaomi Redmi 10", price: "$899")
            ]
        case .sneakers:
            return [
                Product(imageName: "Converse", categoryName: "Sneakers", productName: "Converse", price: "$499"),
                Product(imageName: "Valentino", categoryName: "Sneakers", productName: "Valentino", price: "$899"),
                Product(imageName: "Nike", categoryName: "Sneakers", productName: "Nike", price: "$299"),
                Product(imageName: "Adidas", categoryName: "Sneakers", productName: "Adidas", price: "$299")
            ]
        case .technics:
            return [
                Product(imageName: "PlayStation", categoryName: "Technics", productName: "PlayStation 5", price: "$899"),
                Product(imageName: "RedmiTV", categoryName: "Technics", productName: "Redmi", price: "$599"),
                Product(imageName: "TOSHIBA", categoryName: "Technics", productName: "TOSHIBA", price: "$399"),
                Product(imageName: "Xbox", categoryName: "Technics", productName: "Xbox X", price: "$899")
            ]
        }
    }
}
