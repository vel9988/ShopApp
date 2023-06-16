//
//  MainView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 13.06.2023.
//

import SwiftUI
import UIKit

struct MainView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        TabView {
            ScreenFactory.share.create(view: .home)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ScreenFactory.share.create(view: .profile)
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            
        }
//        .toolbarBackground(.red, for: .tabBar)
        .edgesIgnoringSafeArea(.all)
//        .accentColor(.gray)
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
