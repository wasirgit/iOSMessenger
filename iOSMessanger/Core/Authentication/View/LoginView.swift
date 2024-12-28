//
//  LoginView.swift
//  iOSMessanger
//
//  Created by Wasir on 27/12/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    

    var body: some View {
        NavigationStack{
            Spacer()
            VStack {
                Image("messenger-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
            }
            VStack(spacing: 12){
                TextField("Enter your email",text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal,24)
                SecureField("Enter your password",text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal,24)
            }
            
            Button{
                print("Forgot button tapped")
            } label: {
                Text("Forgot password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing,24)
            }
            .frame(maxWidth: .infinity,alignment: .trailing)
            
            
            Button {
                print("tap on login")
            } label: {
                Text("login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)

            
            HStack{
            
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width - 100) / 2, height: 0.5)
                Text("OR")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width - 100) / 2, height: 0.5)
            }
            .foregroundColor(.gray)
            
            HStack{
                Image("facebook-icon")
                    .resizable()
                    .frame(width: 20, height: 20)
                    
                    
                Text("Login with Facebook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.systemBlue))
            }
            .padding(.top,8)
            
            Spacer()
            
            Divider()
            NavigationLink{
                Text("Create an account")
            
            }label: {
                HStack(spacing: 3){
                    Text("Don't have an account? ")
                    
                    Text("Sign Up")

                        .fontWeight(.semibold)
                }.font(.footnote)
            }.padding(.vertical)
            
        }
    }
}

#Preview {
    LoginView()
}
