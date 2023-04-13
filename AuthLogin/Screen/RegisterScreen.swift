//
//  RegisterScreen.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 7/4/23.
//

import SwiftUI
import SwiftRUI
import FirebaseAuth

struct RegisterScreen: View {
    @Binding var navpath: NavigationPath
    
    @State var email: String = ""
    @State var password: String = ""
    @State var isError: Bool = false
    @State var message: String = ""
    
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
                
                if (!message.isEmpty) {
                    Text(message)
                        .padding(.top, 0)
                        .font(.subheadline)
                        .foregroundColor(isError ? .red : .blue)
                }
                
                RUITextfield(text: $email,
                             placeholder: "Email Address")
                .padding(.top, 38)
                .keyboardType(.emailAddress)
                
                RUITextfield(text: $password,
                             placeholder: "Password",
                             isSecure: true)
                .padding(.vertical)
                
                
                RUIRoundedCornerTextButton(text: "Sign up") {
                    
                }
                .padding(.top)
                
                
                Spacer()
                
            } // HStack
            .padding(.horizontal, 32)
            .padding(.vertical)
            .onAppear {
                print(_email.projectedValue)
                print(_email.wrappedValue)
            }
        }
    }
    

}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen(navpath: .constant(NavigationPath()))
    }
}
