//
//  RadialBackground.swift
//  AuthLogin
//
//  Created by Swee Kwang Chua on 4/4/23.
//

import SwiftUI

struct RadialBackground: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(
                        .yellow
                    )
                    .offset(x: 100)
                
                Circle()
                    .fill(
                        .red
                    )
                    .offset(x: -50)

                
            }
                .offset(y: -320)
                .blur(radius: 60)
            
            Spacer()
        }
    }
}

struct RadialBackground_Previews: PreviewProvider {
    static var previews: some View {
        RadialBackground()
    }
}
