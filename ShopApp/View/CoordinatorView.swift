//
//  CoordinatorView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 10.06.2023.
//

import SwiftUI

struct CoordinatorView: View {
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            if coordinator.authState {
                coordinator.build(page: .main)
                    .navigationDestination(for: Page.self) { page in
                        coordinator.build(page: page)
                    }
            } else {
                coordinator.build(page: .login)
                    .navigationDestination(for: Page.self) { page in
                        coordinator.build(page: page)
                    }
                    .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                        coordinator.build(fullScreenCover: fullScreenCover)
                    }
            }
        }
        .environmentObject(coordinator)
    }
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
