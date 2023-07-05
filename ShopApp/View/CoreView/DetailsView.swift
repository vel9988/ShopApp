//
//  DetailsView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 16.06.2023.
//

import SwiftUI

struct DetailsView: View {
    
    
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack(spacing: 10) {
                    Image("Nike")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 200)
                }
                
            }
            Spacer()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
