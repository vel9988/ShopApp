//
//  CategoryButtonsAPI.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 15.06.2023.
//

import Foundation

final class CategoryButtonsAPI {
    static func getButtons() -> [CategoryButton] {
        return [
            CategoryButton(iconName: "iphone.homebutton", labelText: "Phones"),
            CategoryButton(iconName: "beats.headphones", labelText: "Headphones"),
            CategoryButton(iconName: "gamecontroller", labelText: "Games"),
            CategoryButton(iconName: "car", labelText: "Cars"),
            CategoryButton(iconName: "bed.double", labelText: "Furniture"),
            CategoryButton(iconName: "logo.playstation", labelText: "Consoles"),
            CategoryButton(iconName: "tv", labelText: "TV"),
            CategoryButton(iconName: "giftcard", labelText: "Gifts")
        ]
    }
}
