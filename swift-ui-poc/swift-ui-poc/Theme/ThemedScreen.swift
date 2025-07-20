//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Mansi Agarwal on 20/07/25.
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
            AppTheme.backgroundGradient.ignoresSafeArea()
            content
                .padding()
        }
    }
}
