//
//  AuthView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 08.06.2023.
//

import SwiftUI

struct AuthView: View {
    
    @State private var currentViewShowing: String = "login"
    
    var body: some View {
        
        if currentViewShowing == "login" {
            LoginView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.light)
        } else {
            SignupView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.dark)
        }
        
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
