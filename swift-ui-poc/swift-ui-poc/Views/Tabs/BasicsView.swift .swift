//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 20/07/25.
//

import SwiftUI

struct BasicsView:View {
    var body: some View {
        NavigationStack {
            ThemedScreen {
                VStack {
                    Spacer()
                }
            }.navigationTitle("Basics")
        }
    }
}
