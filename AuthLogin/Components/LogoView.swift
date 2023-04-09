//
//  LogoView.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 4/4/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Circle()
                .stroke(style: .init(lineWidth: 10))
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
        }
        .frame(width: 75, height: 75)
        .background(
            Color.white
                .opacity(0.5)
        )
        .cornerRadius(12)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            
            LogoView()
        }
        .ignoresSafeArea()
        
    }
}
