//
//  HomeView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 13.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            Text("Trade by bata")
                .font(.title)
                .bold()
            
            HStack {
                TextField("What are you looking for?", text: $viewModel.searchText)
                Image(systemName: "magnifyingglass")
                
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.black)
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(viewModel.categoryButtons, id: \.self) { button in
                        Button {
                            // Добавить вюшную заглушку
                        } label: {
                            IconLabelView(iconName: button.iconName, labelText: button.labelText)
                        }
                        .accentColor(.black)
                    }
                    
                }
                
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                ProductsScroll(categoryName: "Latest", products: viewModel.latestProduct)
                ProductsScroll(categoryName: "Sneakers", products: viewModel.sneakersProduct)
                ProductsScroll(categoryName: "Phones", products: viewModel.phonesProduct)
                ProductsScroll(categoryName: "Technics", products: viewModel.technicsProduct)
                
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}

struct IconLabelView: View {
    var iconName: String
    var labelText: String
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .frame(width: 50, height: 50)
                .font(.title)
                .background(Color.init(UIColor.systemGray5))
                .cornerRadius(25)
            
            Text(labelText)
                .font(.system(size: 12))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
        }
    }
}

struct ScrollItemsView: View {
    var iconName: String
    var labelText: String
    
    var body: some View {
        Text("asda")
    }
}

struct ProductsScroll: View {
    
    var categoryName: String
    var products: [Product]
    
    var body: some View {
        VStack {
            HStack {
                Text(categoryName)
                    .font(.headline)
                Spacer()
                Button("View all") {
                    
                }
                .foregroundColor(.gray)
            }
            .padding(.leading)
            .padding(.trailing)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 10) {
                    ForEach(products, id: \.id) { product in
                        Button {
                            
                        } label: {
                            ProductCard(product: product)
                        }
                        
                    }
                    
                }
                .padding(.leading)
                Spacer()
            }
            
            
        }
    }
}

