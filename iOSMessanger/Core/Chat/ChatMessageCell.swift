//
//  ChatMessageCell.swift
//  iOSMessanger
//
//  Created by Wasir on 1/1/25.
//

import SwiftUI

struct ChatMessageCell: View {
    let isFromCurrentUser: Bool
    var body: some View {
        HStack(){
            if isFromCurrentUser {
                Spacer()
                Text("Hello, There! How are you? I hope you are doing well. I am doing well too. Thank you for asking.")
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5 ,alignment: .trailing)
                    .padding(.horizontal,4)
                    
                    
            }else{
                HStack(alignment: .bottom){
                    CircularProfileImageView(user: User.MOCK_USER, size: .xxSmall)
                    Text("Hi, There! How are you? I hope you are doing well. I am doing well too. Thank you for asking.")
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                        .frame(maxWidth: UIScreen.main.bounds.width / 1.5 ,alignment: .leading)

                }
                Spacer()
            }
        }
        .padding(.horizontal,8)
    }
}

#Preview {
    ChatMessageCell(isFromCurrentUser: true)
}
