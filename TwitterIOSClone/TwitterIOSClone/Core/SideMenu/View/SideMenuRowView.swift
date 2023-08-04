//
//  SideMenuRowView.swift
//  TwitterIOSClone
//
//  Created by Ahmad Usman on 8/2/23.
//

import SwiftUI

struct SideMenuRowView: View {
    let viewModel: sideMenuViewModel
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: viewModel.imageName).foregroundColor(.black)
            
            Text(viewModel.description)
            
            Spacer()
        }
        .frame(height:40)
        .padding(.horizontal)
    }
}

struct SideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRowView(viewModel: .profile)
    }
}
