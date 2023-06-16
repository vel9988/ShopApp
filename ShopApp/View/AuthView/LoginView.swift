//
//  LoginView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 08.06.2023.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    @StateObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Welcome Back!")
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer()
                }
                .padding()
                .padding(.top)
                
                Spacer()
                
                HStack {
                    Image(systemName: "mail")
                    TextField("Email", text: $viewModel.email)
                    
                    Spacer()
                    
                    if viewModel.email.count != 0 {
                        Image(systemName: viewModel.email.isValidEmail() ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(viewModel.email.isValidEmail() ? .green : .red)
                    }
                    
                }
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                }
                .padding()
                
                HStack {
                    Image(systemName: "lock")
                    SecureField("Password", text: $viewModel.password)
                    
                    Spacer()
                    
                    if viewModel.password.count != 0 {
                        Image(systemName: viewModel.password.isValidPassword(viewModel.password) ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(viewModel.password.isValidPassword(viewModel.password) ? .green : .red)
                    }
                    
                }
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                }
                .padding()
                
                Button("Don't have an account?") {
                    coordinator.push(.singup)
                        
                }
                .foregroundColor(.black.opacity(0.7))
                
                Spacer()
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Sign in")
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

            }
            
        }
        
        
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: AuthViewModel())
    }
}
