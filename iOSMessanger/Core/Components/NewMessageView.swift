//
//  NewMessageView.swift
//  iOSMessanger
//
//  Created by Wasir on 29/12/24.
//

import SwiftUI

struct NewMessageView: View {
    @Environment(\.dismiss) var dismiss
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView{
                TextField("To: ", text: $searchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                
                
                Text("CONTACTS")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0 ... 10, id: \.self) { user in
                    VStack{
                        HStack{
                            CircularProfileImageView(user: User.MOCK_USER, size: .small)
                            
                            Text("John Wick")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Spacer()
                                    
                        }
                        .padding(.leading)
                        
                        Divider()
                            .padding(.leading)
                    }
                }
            }
        }
        .navigationTitle("New message")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button("Cancel"){
                    dismiss()
                }
                .foregroundColor(.black)
            }
        }
    
        
    }
}

#Preview {
    NavigationStack {
        NewMessageView()
    }
}
