//
//  FeedView.swift
//  TwitterIOSClone
//
//  Created by Ahmad Usman on 8/1/23.
//

import SwiftUI

struct FeedView: View {
    @State private var newTweet = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 20, id:\.self){ _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            
            Button {
                newTweet.toggle()
            } label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
                .background(Color(.systemBlue))
                .foregroundColor(Color(.white))
                .clipShape(Circle())
                .padding()
            
                .fullScreenCover(isPresented: $newTweet) {
                    NewTweetView()
                }

        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
