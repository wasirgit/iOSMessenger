//
//  CircularProfileImageView.swift
//  iOSMessanger
//
//  Created by Wasir on 31/12/24.
//

import SwiftUI

enum ProfileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var dimention: CGFloat {
        switch self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 56
        case .large: return 64
        case .xLarge: return 80
        }
    }
}
struct CircularProfileImageView: View {
    let user : User
    let size: ProfileImageSize
    var body: some View {
        if let imageUrl = user.profileImageUrl{
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimention, height: size.dimention)
                .clipShape(Circle())
        }else{
            Image(systemName: "person.circular.fill")
                .resizable()
                .scaledToFill()
                .frame(width: size.dimention, height: size.dimention)
                .clipShape(Circle())
        }   
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_USER, size: .xxSmall)
}
