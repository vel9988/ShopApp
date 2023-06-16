//
//  HomeViewModel.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 13.06.2023.
//

import Combine
import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published var searchText: String = ""
    @Published var categoryButtons: [CategoryButton] = CategoryButtonsAPI.getButtons()
    @Published var latestProduct: [Product] = ProductAPI.getProducts(.latest)
    @Published var sneakersProduct: [Product] = ProductAPI.getProducts(.sneakers)
    @Published var phonesProduct: [Product] = ProductAPI.getProducts(.phones)
    @Published var technicsProduct: [Product] = ProductAPI.getProducts(.technics)
    
}
