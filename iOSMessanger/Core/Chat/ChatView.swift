//
//  ChatView.swift
//  iOSMessanger
//
//  Created by Wasir on 1/1/25.
//

import SwiftUI

struct ChatView: View {
    @State private var message=""
    var body: some View {
        VStack {
            ScrollView{
                VStack{
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                }
                VStack{
                    Text("John Wick")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Messenger")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                ForEach(0 ... 15, id: \.self) {message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
                
            }
            // input message view
            
            ZStack(alignment: .trailing){
                TextField("Type your message", text:$message, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                    
                Button {
                    print("send message")
                } label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)

            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
