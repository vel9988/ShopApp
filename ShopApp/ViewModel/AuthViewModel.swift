//
//  AuthViewModel.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 08.06.2023.
//

import Combine
import Foundation

class AuthViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
}
