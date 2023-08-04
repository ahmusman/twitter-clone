//
//  SideMenuView.swift
//  TwitterIOSClone
//
//  Created by Ahmad Usman on 8/2/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading){
                Circle().frame(width: 48, height: 48)
                
                VStack(alignment:.leading, spacing: 4){
                    Text("Bruce Waye").font(.headline)
                    
                    Text("@Batman").font(.caption).foregroundColor(.gray)
                }
                UserStatsView()
            }.padding(.leading)
            ForEach(sideMenuViewModel.allCases, id: \.rawValue){
                viewModel in
                
                if viewModel == .profile{
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuRowView(viewModel:  viewModel)
                    }
                    
                }else if viewModel == .logout{
                    Button {
                        print("handle logout here")
                    } label: {
                        SideMenuView(viewModel: viewModel)
                    }

                    
                } else{
                    SideMenuRowView(viewModel: viewModel)
                }
            }
            Spacer()
        }
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
