//
//  LoginView.swift
//  InstagramSwiftUiTutorial
//
//  Created by 장준호 on 2021/11/11.
//

import SwiftUI

struct LoginView: View {
    
    @State private var text = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Image("Instagram_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                
                VStack(spacing: 20) {
                    CustomTextField(text: $text, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal, 32)
                        .foregroundColor(.white)
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal, 32)
                        .foregroundColor(.white)
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Forgot password??")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.trailing, 30)
                            .padding(.top)
                    })
                }
                
                Button(action: {}, label: {
                    Text("Sign in")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 330, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .clipShape(Capsule())
                        .padding()
                })
                
                Spacer()

                
                Button(action: {}, label: {
                    HStack{
                        Text("Don't have an account??")
                            .font(.system(size: 14))
                        Text("Sign up")
                            .font(.system(size: 14, weight: .semibold))
                    }.foregroundColor(.white)
                    .padding(.bottom, 25)

                })
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
