//
//  UserRowView.swift
//  TwitterIOSClone
//
//  Created by Ahmad Usman on 8/2/23.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        
        HStack(spacing: 12){
            Circle().frame(width: 48, height: 48)
            
            VStack{
                Text("Robin")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text("@robby").font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }.padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
