//
//  Coordinator.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 10.06.2023.
//

import SwiftUI

enum AuthPage: String, Identifiable {
    case login
    case singup
    
    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func push(_ page: AuthPage) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(page: AuthPage) -> some View {
        switch page {
        case .login:
            ScreenFactory.share.create(view: .login)
                .preferredColorScheme(.light)
        case .singup:
            ScreenFactory.share.create(view: .signup)
                .preferredColorScheme(.dark)
        }
    }
    
}
