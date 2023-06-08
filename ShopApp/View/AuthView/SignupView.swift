//
//  SignupView.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 08.06.2023.
//

import SwiftUI

struct SignupView: View {
    @Binding var currentShowingView: String
    
    @State private var email = ""
    @State private var password = ""
    
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
                    TextField("Email", text: $email)
                    
                    Spacer()
                    
                    if email.count != 0 {
                        Image(systemName: email.isValidEmail() ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(email.isValidEmail() ? .green : .red)
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
                    SecureField("Password", text: $password)
                    
                    Spacer()
                    
                    if password.count != 0 {
                        Image(systemName: password.isValidPassword(password) ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(password.isValidPassword(password) ? .green : .red)
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
                    withAnimation {
                        self.currentShowingView = "login"
                    }
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
        SignupView(currentShowingView: .constant(""))
    }
}
