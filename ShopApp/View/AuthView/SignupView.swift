//
//  SignupView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 08.06.2023.
//

import SwiftUI

struct SignupView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    @StateObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Create an Account!")
                        .foregroundColor(.white)
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
                .foregroundColor(.white)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.white)
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
                .foregroundColor(.white)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.white)
                }
                .padding()
                
                Button("Already have an account?") {
                    coordinator.popToRoot()
                }
                .foregroundColor(.gray)
                
                Spacer()
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Create New Account")
                        .foregroundColor(.black)
                        .font(.title3)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                
                        }
                        .padding(.horizontal)
                }

            }
            
        }
        
        
    }
}


struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView(viewModel: AuthViewModel())
    }
}
