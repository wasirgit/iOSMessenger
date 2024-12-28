//
//  RegistrationView.swift
//  iOSMessanger
//
//  Created by Wasir on 28/12/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
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
                TextField("Enter your fullname",text: $fullname)
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
            
            Button {
                print("tap on login")
            } label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            Spacer()
            Divider()
            
            Button{
                dismiss()
            }label: {
                HStack(spacing: 3){
                    Text("Already have an account? ")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }.font(.footnote)
            }.padding(.vertical)

           
        }
    }
}

#Preview {
    RegistrationView()
}
