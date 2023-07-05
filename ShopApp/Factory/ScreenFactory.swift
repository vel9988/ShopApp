//
//  ScreenFactory.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 10.06.2023.
//

import SwiftUI

enum Screen {
    case login
    case signup
    case main
    case home
    case profile
}

final class ScreenFactory {
    static let share = ScreenFactory()
    
    func create(view: Screen) -> some View {
        switch view {
        case .login:
            return AnyView(LoginView(viewModel: AuthViewModel()))
        case .signup:
            return AnyView(SignupView(viewModel: AuthViewModel()))
        case .home:
            return AnyView(HomeView(viewModel: HomeViewModel()))
        case .profile:
            return AnyView(ProfileView(viewModel: ProfileViewModel()))
        case .main:
            return AnyView(MainView())
        }
    }
    
}
