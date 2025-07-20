//
//  AppTheme.swift
//  swift-ui-poc
//
//  Created by Mansi Agarwal on 20/07/25.
//
import SwiftUI

struct AppTheme {
    // Colors
    static let backgroundGradient = LinearGradient(
        colors: [Color.indigo.opacity(0.4), Color.purple.opacity(0.6)],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    static let primaryText = Color.white
    static let secondaryText = Color.gray
    static let cardBackground = Color.black.opacity(0.2)
    
    // Fonts
    static let headerFont = Font.system(size: 28, weight: .bold)
    static let bodyFont = Font.system(size: 18)
    
    // Corner radius & shadows
    static let cornerRadius: CGFloat = 16
    static let shadow = Color.black.opacity(0.2)
}

