//
//  MainTabView.swift
//  InstagramSwiftUiTutorial
//
//  Created by 장준호 on 2021/10/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            UploadPostView()
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            NotificationsView()
                .tabItem {
                    Image(systemName: "heart")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
            
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
