//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 20/07/25.
//
import SwiftUI

struct ThemedCard<Content: View>: View {
    let content: () -> Content

    var body: some View {
        content()
            .padding()
            .background(AppTheme.cardBackground)
            .cornerRadius(AppTheme.cornerRadius)
            .shadow(color: AppTheme.shadow, radius: 5, x: 0, y: 4)
    }
}
