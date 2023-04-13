//
//  RouteView.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 7/4/23.
//

import SwiftUI

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
            LoginScreen(navpath: $navPath)
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


    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
    }
}
