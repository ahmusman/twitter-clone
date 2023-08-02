//
//  TweetRowView.swift
//  TwitterIOSClone
//
//  Created by Ahmad Usman on 8/1/23.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        
        VStack(alignment:.leading ){
            
            //profile image, user info, tweet
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color( .systemBlue))
                
                //User info and Tweet Caption
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("Bruce Wayne").font(.subheadline).bold()
                        
                        Text("@BatMan").foregroundColor(.gray).font(.caption)
                        
                        Text("2w").foregroundColor(.gray).font(.caption)
                    }
                    
                    //Tweet Caption
                    Text("I believe in Harvey Dent").font(.subheadline).multilineTextAlignment(.leading)
                    
                }
                
            }
            
            //tweet action Buttons
            HStack{
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "bubble.left").font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath").font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "heart").font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "bookmark").font(.subheadline)
                }
                .padding()
            }
            .foregroundColor(.gray)
            .padding()
            Divider()

        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
