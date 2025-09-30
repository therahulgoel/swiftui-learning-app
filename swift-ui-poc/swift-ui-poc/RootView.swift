//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 30/09/25.
//

import SwiftUI

struct RootView: View {
    @State private var isActive = false
    
    var body: some View {
        Group {
            if isActive {
                MainTabView()
            } else {
                SplashScreenView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}
