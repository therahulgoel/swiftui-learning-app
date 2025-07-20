//
//  ContentView.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 17/07/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            //Each Tab item has to be attached with a View
            BasicsView()
                .tabItem {
                    Label("Basics", systemImage: "square.grid.2x2")
                }
            
            //Each Tab item has to be attached with a View
            StateView()
                .tabItem {
                    Label("State", systemImage: "switch.2")
                }

            //Each Tab item has to be attached with a View
            UIKitVsSwiftUIView()
                .tabItem {
                    Label("UIKit vs SwiftUI", systemImage: "arrow.left.arrow.right")
                }
        }
    }
}

#Preview {
    ContentView()
}

