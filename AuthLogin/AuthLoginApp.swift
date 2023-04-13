//
//  AuthLoginApp.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 4/4/23.
//

import SwiftUI
import FirebaseCore

@main
struct AuthLoginApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            RouteView()
        }
    }
}
