//
//  ProfileView.swift
//  TwitterIOSClone
//
//  Created by Ahmad Usman on 8/2/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment:.leading){
            
            headerView
            
            actionButtons
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Heath Ledger").font(.title2).bold()
                    
                    Image(systemName: "checkmark.seal.fill").foregroundColor(Color(.systemBlue))
                }
                
                Text("@TheJoker").font(.subheadline).foregroundColor(Color(.gray))
                Text("Wanna Know how i got these scars").font(.subheadline).padding(.vertical)
                
                HStack(spacing:24){
                    
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                        Text("All around the world")
                    }
                    
                    HStack{
                        Image(systemName: "link")
                        Text("www.joker.com")
                    }
                }.foregroundColor(Color(.gray))
                    .font(.caption)
                
                
            }.padding(.horizontal)
        Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    
    var headerView: some View{
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue).ignoresSafeArea()
            
            VStack {
                Button {
                
                } label: {
                    Image(systemName: "arrow.left").resizable().frame(width: 20, height: 12)
                        .foregroundColor(.white)
                        .offset(x: 16,y:12)
                }

                Circle().frame(width: 72, height: 72).offset(CGSize(width: 16, height: 24))
            }
            
        }.frame(height: 96)
    }
}

extension ProfileView{
    var actionButtons: some View{
        HStack(spacing:12){
            Spacer()
            
            Image(systemName: "bell").font(.title3)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button {
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 22)
                    .overlay(RoundedRectangle(cornerRadius:20).stroke( Color.gray, lineWidth: 0.75))
            }
        }.padding(.trailing)
    }
}
