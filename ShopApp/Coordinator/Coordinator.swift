//
//  Coordinator.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 10.06.2023.
//

import SwiftUI

enum Page: String, Identifiable {
    case login
    case main
    
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case singup
    
    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    
    @State var authState: Bool = true
    
    @Published var path = NavigationPath()
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .login:
            ScreenFactory.share.create(view: .login)
                .preferredColorScheme(.light)
        case .main:
            ScreenFactory.share.create(view: .main)
        }
    }
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .singup:
            NavigationStack {
                ScreenFactory.share.create(view: .signup)
            }
        }
    }
    
}
