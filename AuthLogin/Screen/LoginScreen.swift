//
//  LoginScreen.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 4/4/23.
//

import SwiftUI
import SwiftRUI
import FirebaseAuth

struct LoginScreen: View {
    @Binding var navpath: NavigationPath
    
    @State var email: String = ""
    @State var password: String = ""
    @State var errorMessage: String = ""
    
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
                
                RUITextfield(text: $password,
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
                    loginUser()
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
    
    private func loginUser() {
        Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
            // TODO: - Checks.
            
            guard let result = authResult,
                  error == nil else {
                errorMessage = error?.localizedDescription ?? "An error has occurred"
                return
            }
            
            let user = result.user
            
            // Check if user verified his email.
            if !user.isEmailVerified {
                user.sendEmailVerification { _ in
                    // HANDLE ERROR.
                    errorMessage = "Email is not verified. We have sent you an new email. Follow the step to verify."
                }
                return
            }
            
            // Logic successfully.
            navpath.append(Routes.home)
        }

    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(navpath: .constant(NavigationPath()))
    }
}
