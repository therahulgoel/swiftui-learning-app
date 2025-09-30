//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 20/07/25.
//

import SwiftUI

struct BasicsView: View {
    @StateObject private var viewModel = BasicsViewModel()
    
    var body: some View {
        NavigationStack {
            ThemedScreen {
                List(viewModel.demoItems) { item in
                    NavigationLink(item.title) {
                        item.destination
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color.clear)
            }
            .navigationTitle("Basics")
        }
    }
}

