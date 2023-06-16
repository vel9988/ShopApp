//
//  ProfileView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 13.06.2023.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    @StateObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            Text("Profile")
                .font(.body)
                .bold()
            
            Image("MyAvatar")
                .resizable()
                .scaledToFit()
                .frame(width: 100,  height: 100)
                .clipShape(Circle())
                .overlay {
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.gray, lineWidth: 4)
                        .clipShape(Circle())
                }
            
            PhotosPicker(selection: $viewModel.selectedItem,
                         matching: .images,
                         photoLibrary: .shared()) {
                Text("Change photo")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .fontWeight(.regular)
            }
            
            Text(viewModel.userName)
                .padding(.top, 10)
                .font(.body)
            
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("Upload item")
                    
                }
                .foregroundColor(.white)
                .font(.title3)
                .bold()
                .frame(maxWidth: .infinity)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.black)
                        
                }
                .padding(.horizontal)
            }
            .padding(.top, 30)
            
            ScrollView {
                NavigationLink(destination: MainView()) {
                    SettingsRow(icon: "creditcard", title: "Trade store", rightItems: .chevron)
                }
                
                NavigationLink(destination: MainView()) {
                    SettingsRow(icon: "creditcard", title: "Payment method", rightItems: .chevron)
                }
                
                NavigationLink(destination: MainView()) {
                    SettingsRow(icon: "creditcard", title: "Balance", rightItems: .balance)
                }
                
                NavigationLink(destination: MainView()) {
                    SettingsRow(icon: "creditcard", title: "Trade history", rightItems: .chevron)
                }
                
                NavigationLink(destination: MainView()) {
                    SettingsRow(icon: "repeat", title: "Restore Purchase", rightItems: .chevron)
                }
                
                NavigationLink(destination: MainView()) {
                    SettingsRow(icon: "questionmark.circle", title: "Help", rightItems: .nothing)
                }
                
                NavigationLink(destination: MainView()) {
                    SettingsRow(icon: "rectangle.portrait.and.arrow.right", title: "Log out", rightItems: .nothing)
                }
                
                
            }
            
        }
        .padding()
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(viewModel: ProfileViewModel())
    }
}

enum RightItems {
    case chevron
    case balance
    case nothing
}

struct SettingsRow: View {
    var icon: String
    var title: String
    var rightItems: RightItems

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.black)
                .font(.title)
                .frame(width: 30)
            
            Text(title)
                .font(.title3)
                .foregroundColor(.black)
                .fontWeight(.regular)
            
            Spacer()
            
            switch rightItems {
            case .chevron:
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
            case .balance:
                Text("$1563")
                    .foregroundColor(.black)
            case .nothing:
                Text("")
            }
            
//            Image(systemName: "chevron.right")
//                .foregroundColor(.gray)
        }
        .padding()
    }
}








