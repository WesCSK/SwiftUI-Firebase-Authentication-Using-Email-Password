//
//  HomeScreen.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 7/4/23.
//

import SwiftUI
import FirebaseAuth

struct HomeScreen: View {
    @Binding var navpath: NavigationPath
    
    var body: some View {
        VStack {
            Text("Home Page")
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    logoutUser()
                } label: {
                    Text("Logout")
                }

            }
        }
    }
    
    private func logoutUser() {
        do {
            try Auth.auth().signOut()
            navpath.removeLast()
        } catch {
            // TODO: - Handle ERROR
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(navpath: .constant(NavigationPath()))
    }
}
