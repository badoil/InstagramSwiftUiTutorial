//
//  NotificationCell.swift
//  InstagramSwiftUiTutorial
//
//  Created by 장준호 on 2021/11/05.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = true
        
        var body: some View {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("batman").font(.system(size: 14, weight: .semibold)) + Text(" liked one of your followers")
                    .font(.system(size: 15))
                
                Spacer()
                
                if showPostImage {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                } else {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Follow")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 8)
                            .background(Color(.systemBlue))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .font(.system(size: 14, weight: .semibold))
                    })
                }
            }.padding(.horizontal)
        }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
