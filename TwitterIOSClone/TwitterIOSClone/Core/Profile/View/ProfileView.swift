//
//  ProfileView.swift
//  TwitterIOSClone
//
//  Created by Ahmad Usman on 8/2/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace private var animation
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack(alignment:.leading){
            
            headerView
            
            actionButtons
            
            userInfoDetails
            
            tweetFilterBar
            
            tweetsView
        
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
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left").resizable().frame(width: 20, height: 12)
                        .foregroundColor(.white)
                        .offset(x: 16,y:12)
                }

                Circle().frame(width: 72, height: 72).offset(CGSize(width: 16, height: 24))
            }
            
        }.frame(height: 96)
    }
    
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
    
    var userInfoDetails: some View {
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
            
            
            
        }.padding(.horizontal)
    }
    
    var tweetFilterBar : some View{
        HStack{
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue){ item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular )
                        .foregroundColor(selectedFilter == item ?
                            .black: .gray)
                    
                    if selectedFilter == item{
                        Capsule().foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    }
                    else{
                        Capsule().foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                    }.onTapGesture{
                        withAnimation(.easeInOut){
                            self.selectedFilter = item
                        }
                }
                
            }
        }.overlay(Divider().offset(x:0, y:16))
    }
    
    var tweetsView: some View{
        ScrollView{
            LazyVStack{
                ForEach(0 ... 9, id: \.self){ _ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}


