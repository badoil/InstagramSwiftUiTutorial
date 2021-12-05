//
//  User.swift
//  InstagramSwiftUiTutorial
//
//  Created by 장준호 on 2021/12/05.
//

import FirebaseFirestoreSwift

struct User: Decodable {
    let username: String
    let email: String
    let fullname: String
    let uid: String
    @DocumentID var id: String?
}
