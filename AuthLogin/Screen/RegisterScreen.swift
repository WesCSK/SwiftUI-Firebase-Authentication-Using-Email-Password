//
//  RegisterScreen.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 7/4/23.
//

import SwiftUI
import SwiftRUI

struct RegisterScreen: View {
    @Binding var navpath: NavigationPath
    
    @State var email: String = ""
    
    var body: some View {
        ZStack {
            RadialBackground()
            
            VStack(spacing: 12) {
                
                LogoView()
                    .padding(.top, -28)
                
                Text("Sign up")
                    .font(.title)
                    .bold()
                    .padding(.top, 18)
                
                Text("Create a new account now for free!")
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
                
                
                RUIRoundedCornerTextButton(text: "Sign up") {
                    navpath.append(Routes.fogotpwd)
                }
                .padding(.top)
                
                
                Spacer()
                
            } // HStack
            .padding(.horizontal, 32)
            .padding(.vertical)
        }
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen(navpath: .constant(NavigationPath()))
    }
}
