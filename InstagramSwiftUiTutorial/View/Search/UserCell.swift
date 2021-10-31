//
//  UserCell.swift
//  InstagramSwiftUiTutorial
//
//  Created by 장준호 on 2021/10/31.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            //image
            
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            //VStack -> username,  full name
            
            VStack(alignment: .leading) {
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                Text("Bruce Wayne")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
