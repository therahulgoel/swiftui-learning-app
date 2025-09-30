//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 30/09/25.
//

import SwiftUI

struct DemoItem: Identifiable {
    let id = UUID()
    let title: String
    let destination: AnyView
}

final class BasicsViewModel: ObservableObject {
    @Published var demoItems: [DemoItem] = [
        DemoItem(
            title: "GeometryReader: Local vs Global",
            destination: AnyView(LocalGlobalSideBySideDemo())
        )
    ]
}
