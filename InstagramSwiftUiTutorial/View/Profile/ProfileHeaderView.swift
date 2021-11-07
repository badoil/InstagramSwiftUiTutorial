//
//  ProfileHeaderView.swift
//  InstagramSwiftUiTutorial
//
//  Created by 장준호 on 2021/11/05.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                
                Spacer()
                
                HStack(spacing: 16) {
                    UserStatView(value: 1, title: "Post")
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 5, title: "Followings")
                }
                .padding(.trailing, 32)
            }
            
            HStack {
                VStack(alignment:.leading) {
                    Text("Bruce Wayne")
                        .font(.system(size: 15, weight: .semibold))
                        .padding([.top, .leading])
                    
                    Text("Gotham's knight || Billionaire")
                        .font(.system(size: 15))
                        .padding(.leading)
                        .padding(.top, 1)
                }
                Spacer()
            }

            
            HStack {
                Spacer()
                
                
                
                Spacer()
            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
