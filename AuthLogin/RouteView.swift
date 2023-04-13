//
//  RouteView.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 7/4/23.
//

import SwiftUI
import FirebaseAuth

enum Routes {
    case login
    case signup
    case fogotpwd
    case home
}

struct RouteView: View {
    @State private var navPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navPath) {
            SplashScreen()
                .navigationDestination(for: Routes.self) { routes in
                    switch routes {
                    case .login:
                        LoginScreen(navpath: $navPath)
                    case .signup:
                        RegisterScreen(navpath: $navPath)
                    case .fogotpwd:
                        ForgotPwdScreen(navpath: $navPath)
                    case .home:
                        HomeScreen(navpath: $navPath)
                    }
                }
        }
        .onAppear {
            addListener()
        }
    }
    
    private func addListener() {
        Auth.auth().addStateDidChangeListener { auth, user in
            guard user != nil else {
                navPath.append(Routes.login)
                return
            }
            
            navPath.append(Routes.home)
        }
    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
    }
}
