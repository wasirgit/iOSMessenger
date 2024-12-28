//
//  ActiveNowView.swift
//  iOSMessanger
//
//  Created by Wasir on 28/12/24.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing: 32){
                ForEach(0 ... 10, id: \.self) { user in
                    VStack{
                        ZStack(alignment: .bottomTrailing){
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 64, height: 64)
                                .foregroundColor(Color(.systemGray4))
                            
                            
                            ZStack{
                                Circle()
                                    .fill(.white)
                                    .frame(width: 16, height: 16)
                                
                                    Circle()
                                    .fill(Color(.systemGreen))
                                        .frame(width: 12, height: 12)
                            }
                        }
                            
                        Text("Bruce")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
            }
            .padding()
        }
        .frame(height: 106)
    }
}

#Preview {
    ActiveNowView()
}
