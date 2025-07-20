//
//  UIKitVsSwiftUIView.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 20/07/25.
//
import SwiftUI

struct UIKitVsSwiftUIView: View {
    var body: some View {
        NavigationStack {
            ThemedScreen{
                VStack {
                    Text("SwiftUI way is composition, not inheritance.")
                    Spacer()
                }
            }.navigationTitle("UIKit vs SwiftUI")
        }
    }
}
