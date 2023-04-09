//
//  LoginScreen.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 4/4/23.
//

import SwiftUI
import SwiftRUI

struct LoginScreen: View {
    @Binding var navpath: NavigationPath
    
    @State var email: String = ""
    
    var body: some View {
        ZStack {
            RadialBackground()
            
            VStack(spacing: 12) {
                
                LogoView()
                    .padding(.top, 12)
                
                Text("Sign in")
                    .font(.title)
                    .bold()
                    .padding(.top, 18)
                
                Text("Access to your account")
                    .padding(.top, 0)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                RUITextfield(text: $email,
                             placeholder: "Email Address")
                .padding(.top, 38)
                
                RUITextfield(text: $email,
                             placeholder: "Password",
                             isSecure: true)
                .padding(.vertical)
                
                HStack {
                    Spacer()
                    
                    Button("Forgot Password?") {
                        navpath.append(Routes.fogotpwd)
                    }
                    .font(.subheadline)
                    
                }
                
                RUIRoundedCornerTextButton(text: "Login") {
                    navpath.append(Routes.fogotpwd)
                }
                .padding(.top)
                
                
                Spacer()
                
                Button("Don't have an account yet? Register now") {
                    navpath.append(Routes.signup)
                }
                .font(.caption)
                
            } // HStack
            .padding(.horizontal, 32)
            .padding(.vertical)
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(navpath: .constant(NavigationPath()))
    }
}
