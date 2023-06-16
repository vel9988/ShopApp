//
//  ContentViewModelProtocol.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 08.06.2023.
//

import Foundation

protocol ContentViewModelProtocol: ObservableObject {
    var text: String { get }
    
    func firstAction()
}
