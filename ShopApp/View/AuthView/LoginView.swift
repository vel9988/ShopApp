//
//  LoginView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 08.06.2023.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var currentShowingView: String
    
    @State private var email = ""
    @State private var password = ""
    
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
                    TextField("Email", text: $email)
                    
                    Spacer()
                    
                    if email.count != 0 {
                        Image(systemName: email.isValidEmail() ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(email.isValidEmail() ? .green : .red)
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
                    SecureField("Password", text: $password)
                    
                    Spacer()
                    
                    if password.count != 0 {
                        Image(systemName: password.isValidPassword(password) ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(password.isValidPassword(password) ? .green : .red)
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
                    withAnimation {
                        self.currentShowingView = "signup"
                    }
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
        LoginView(currentShowingView: .constant(""))
    }
}
