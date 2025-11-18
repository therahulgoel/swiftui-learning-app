//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 30/09/25.
//

import SwiftUI

struct DemoCodeView<Content: View>: View {
    let title: String
    let code: String
    let content: Content
    var showsToggle: Bool = true

    @State private var showCode: Bool = true

    init(
        title: String,
        code: String,
        showsToggle: Bool = true,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.code = code
        self.showsToggle = showsToggle
        self.content = content()
    }

    var body: some View {
        VStack(spacing: 0) {
            if showsToggle {
                Picker("", selection: $showCode.animation()) {
                    Text("Preview").tag(false)
                    Text("Code").tag(true)
                }
                .pickerStyle(.segmented)
                .padding([.top, .horizontal])
            }

            Divider()

            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    if showCode {
                        CodeBlockView(code: code)
                            .padding()
                    } else {
                        content
                            .padding()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .navigationTitle(title)
        .background(Color(.systemBackground))
    }
}

struct CodeBlockView: View {
    let code: String

    var body: some View {
        ScrollView(.horizontal) {
            Text(code)
                .font(.system(.body, design: .monospaced))
                .foregroundColor(.green)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.black.opacity(0.9))
                )
                .padding(.horizontal)
        }
    }
}

