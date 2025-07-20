//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 20/07/25.
//

import SwiftUI

//Reusable Background Wrapper
struct ThemedScreen<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        ZStack {
            AppTheme.backgroundGradient(randomize: true).ignoresSafeArea()
            content
                .padding()
        }
    }
}
