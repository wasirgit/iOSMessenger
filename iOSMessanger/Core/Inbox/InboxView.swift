//
//  InboxView.swift
//  iOSMessanger
//
//  Created by Wasir on 28/12/24.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack{
                        Image(systemName: "person.circle.fill")
                            
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        print("add new chat")
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black,Color(.systemGray5))
                    }

                }
            }
        }
    }
}

#Preview {
    InboxView()
}
