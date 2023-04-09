//
//  ForgotPwdScreen.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 7/4/23.
//

import SwiftUI
import SwiftRUI

struct ForgotPwdScreen: View {
    @Binding var navpath: NavigationPath
    
    @State var email: String = ""
    @State var isSent = false
    
    var body: some View {
        ZStack {
            RadialBackground()
            
            VStack(spacing: 12) {
                
                
                Text("Forgot Password")
                    .font(.title)
                    .bold()
                    .padding(.top, 18)
                
                
                Text("No worries. Sometimes, we forget")
                    .padding(.top, 0)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                if (isSent) {
                    Text("We have sent you the instructions to your email. Follow the steps to reset.")
                        .padding(.top, 0)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                    
                }
                
                RUITextfield(text: $email,
                             placeholder: "Email Address")
                .padding(.top, 38)
                
                
                
                RUIRoundedCornerTextButton(text: "Reset") {
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

struct ForgotPwdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPwdScreen(navpath: .constant(NavigationPath()))
    }
}
