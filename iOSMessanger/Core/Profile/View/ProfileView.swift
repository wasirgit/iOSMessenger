//
//  ProfileView.swift
//  iOSMessanger
//
//  Created by Wasir on 29/12/24.
//

import SwiftUI

import PhotosUI
struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    let user: User
    var body: some View {
        VStack{
            VStack{
                
                PhotosPicker( selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profileImage {
                        Image(uiImage: profileImage)
                                              .resizable()
                                              .scaledToFill()
                                              .frame(width: 80, height: 80)
                                              .clipShape(Circle())
                    } else{
                        CircularProfileImageView(user: user, size: .xLarge)
                    }
                }
                
                Text(user.fullname)
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
    ProfileView(user: User.MOCK_USER)
}
