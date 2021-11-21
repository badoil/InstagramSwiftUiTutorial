//
//  AuthViewModel.swift
//  InstagramSwiftUiTutorial
//
//  Created by 장준호 on 2021/11/13.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login (withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: login failed")
            }
            guard let user = result?.user else {return}
            self.userSession = user

        }
    }
    
    func register (withEmail email: String, password: String, image: UIImage?, fullname: String, username: String) {
        
        guard let image = image else { return }
        
        ImageUploader.uploadImage(image: image) { imageUrl in
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    print("\(error.localizedDescription)")
                    return
                }
                guard let user = result?.user else {return}
                self.userSession = user
                print("user created successfully")
                
                let data = ["email": email,
                            "username": username,
                            "fullname": fullname,
                            "profileImageUrl": imageUrl,
                            "uid": user.uid]
                
                Firestore.firestore().collection("users").document().setData(data) { _ in
                    print("successfully uploaded user data")
                    self.userSession = user
                }
            }
        }
    }
    
    func signout() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword () {
        
    }
    
    func fetchUser() {
        
    }
}
