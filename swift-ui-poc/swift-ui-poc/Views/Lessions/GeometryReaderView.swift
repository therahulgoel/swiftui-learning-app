//
//  GeometryReaderSample.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 30/09/25.
//

import SwiftUI

/**
 What is GeometryReader?

 GeometryReader is a container view in SwiftUI that lets you read the size and position of the container in the layout system.

 It gives you access to a GeometryProxy, which contains:
 - The size (width and height)
 - The safe area insets
 - The global position of the view
 - Other layout information
 */
import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Local vs Global Frame (Side by Side)")
                .font(.headline)
                .padding(.top)

            HStack(spacing: 20) {
                FrameComparisonBoxView(color: .blue, name: "Box 1")
                FrameComparisonBoxView(color: .green, name: "Box 2")
            }
            .padding()
        }
        .background(Color.gray.opacity(0.15))
    }
}

struct GeometryReaderViewScreen: View {
    var body: some View {
        let code = DemoSourceLoader.loadCode(named: "LocalGlobalSideBySideDemo")
        
        return DemoCodeView(
            title: "GeometryReader Local vs Global",
            code: code
        ) {
            GeometryReaderView()
        }
    }
}

struct FrameComparisonBoxView: View {
    var color: Color
    var name: String

    var body: some View {
        GeometryReader { geo in
            let local = geo.frame(in: .local)
            let global = geo.frame(in: .global)

            VStack(alignment: .center, spacing: 8) {
                Text(name)
                    .bold()
                    .foregroundColor(.white)

                Divider().background(Color.white)

                HStack(alignment: .top, spacing: 12) {
                    // Local values
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Local")
                            .font(.caption)
                            .bold()
                            .underline()
                        Text("x: \(local.minX, specifier: "%.0f")")
                        Text("y: \(local.minY, specifier: "%.0f")")
                        Text("w: \(local.width, specifier: "%.0f")")
                        Text("h: \(local.height, specifier: "%.0f")")
                    }
                    // Global values
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Global")
                            .font(.caption)
                            .bold()
                            .underline()
                        Text("x: \(global.minX, specifier: "%.0f")")
                        Text("y: \(global.minY, specifier: "%.0f")")
                        Text("w: \(global.width, specifier: "%.0f")")
                        Text("h: \(global.height, specifier: "%.0f")")
                    }
                }
                .font(.caption2)
                .foregroundColor(.white)
            }
            .padding(8)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
            .cornerRadius(10)
        }
        .frame(width: 170, height: 150)
        .background(Color.black.opacity(0.1))
        .cornerRadius(12)
    }
}

#Preview {
    GeometryReaderView()
}
