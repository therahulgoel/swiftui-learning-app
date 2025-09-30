//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 30/09/25.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                VStack(spacing: 20) {
                    Image("SwiftLearnLogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                    
                    Text("SwiftUI Learn")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                }
                
                Spacer()
                
                Text("© 2025 @therahulgoel")
                    .font(.footnote)
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.bottom, 20)
            }
            .padding()
        }
    }
}
