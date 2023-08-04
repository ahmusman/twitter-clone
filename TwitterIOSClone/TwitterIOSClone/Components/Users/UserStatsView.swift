//
//  UserStatsView.swift
//  TwitterIOSClone
//
//  Created by Ahmad Usman on 8/2/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing:24){
            
            HStack(spacing:4){
                Text("2").font(.subheadline).foregroundColor(Color(.black)).bold()
                Text("Following").font(.caption).foregroundColor(Color(.gray))
            }
            
            HStack(spacing:4){
                Text("3.7M").foregroundColor(Color(.black)).font(.subheadline).bold()
                Text("Followers").font(.caption)
            }
            
        }.padding(.vertical)
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
