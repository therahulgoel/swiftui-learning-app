//
//  AppTheme.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 20/07/25.
//
import SwiftUI

struct AppTheme {
    // Default Gradient Colors
    static let defaultGradientColors: [Color] = [
        Color.indigo.opacity(0.4),
        Color.purple.opacity(0.6)
    ]
    
    // List of alternate color pairs for randomized gradients
    static let gradientOptions: [[Color]] = [
        [Color.blue.opacity(0.5), Color.pink.opacity(0.6)],
        [Color.green.opacity(0.4), Color.orange.opacity(0.5)],
        [Color.teal.opacity(0.4), Color.purple.opacity(0.5)],
        [Color.yellow.opacity(0.5), Color.red.opacity(0.6)],
        [Color.cyan.opacity(0.5), Color.indigo.opacity(0.6)]
    ]
    
    /// Generates either the default or a random gradient
    static func backgroundGradient(randomize: Bool = false) -> LinearGradient {
        let colors = randomize
            ? gradientOptions.randomElement() ?? defaultGradientColors
            : defaultGradientColors
        
        return LinearGradient(
            colors: colors,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }

    // Theme Colors
    static let primaryText = Color.white
    static let secondaryText = Color.gray
    static let cardBackground = Color.black.opacity(0.2)

    // Theme Fonts
    static let headerFont = Font.system(size: 28, weight: .bold)
    static let bodyFont = Font.system(size: 18)

    // UI Styling
    static let cornerRadius: CGFloat = 16
    static let shadow = Color.black.opacity(0.2)
}
