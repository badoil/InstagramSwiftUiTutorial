//
//  InstagramSwiftUiTutorialApp.swift
//  InstagramSwiftUiTutorial
//
//  Created by 장준호 on 2021/10/24.
//

import SwiftUI
import Firebase

@main
struct InstagramSwiftUiTutorialApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
