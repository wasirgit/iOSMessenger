//
//  InboxRowView.swift
//  iOSMessanger
//
//  Created by Wasir on 28/12/24.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundColor(Color(.systemGray4))
            
            VStack(alignment: .leading, spacing: 4){
                Text("Bruce")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Recent messages from your friends")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    
            }
            HStack{
                Text("Yesterday")
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
        .frame(height: 72)
    }
}

#Preview {
    InboxRowView()
}
