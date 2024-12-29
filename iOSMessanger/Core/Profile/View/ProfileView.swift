//
//  ProfileView.swift
//  iOSMessanger
//
//  Created by Wasir on 29/12/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            VStack{
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemGray4))
                
                Text("John Wick")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
                
                
            List{
                Section{
                    
                    ForEach(SettingsOptionsViewModel.allCases, id: \.self){ option in
                        HStack{
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                                

                        }
                    }
                }
                Section{
                    Button("Log out"){
                        
                    }
                    
                    Button("Delete Account"){
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    ProfileView()
}
