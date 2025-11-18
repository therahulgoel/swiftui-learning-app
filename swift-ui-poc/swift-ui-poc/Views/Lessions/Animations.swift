//
//  Untitled.swift
//  swift-ui-poc
//
//  Created by Rahul Goel on 01/10/25.

import SwiftUI

struct SwiftUIAnimationsDemo: View {
    @State private var scale: CGFloat = 1.0
    @State private var offset: CGFloat = 0
    @State private var rotation: Double = 0
    @State private var showBox = true
    @State private var pulse = false

    var body: some View {
        VStack(spacing: 30) {
            Text("SwiftUI Animation Demo")
                .font(.headline)

            // Row 1: Basic + Spring
            HStack(spacing: 40) {
                // 1. Basic Animation
                Circle()
                    .fill(Color.red)
                    .frame(width: 80, height: 80)
                    .scaleEffect(scale)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            scale = scale == 1 ? 1.5 : 1
                        }
                    }
                    .overlay(Text("Tap").foregroundColor(.white))

                // 2. Spring Animation
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 80, height: 80)
                    .offset(x: offset)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.6, dampingFraction: 0.5)) {
                            offset = offset == 0 ? 120 : 0
                        }
                    }
                    .overlay(Text("Spring").foregroundColor(.white))
            }

            // Row 2: Rotation + Pulse
            HStack(spacing: 40) {
                // 3. Rotation
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.green)
                    .frame(width: 80, height: 80)
                    .rotationEffect(.degrees(rotation))
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.8)) {
                            rotation = rotation == 0 ? 180 : 0
                        }
                    }
                    .overlay(Text("Rotate").foregroundColor(.white))

                // 4. Pulse  hh5
                Circle()
                    .fill(Color.orange)
                    .frame(width: 80, height: 80)
                    .scaleEffect(pulse ? 1.2 : 1.0)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 0.8).repeatForever(autoreverses: true)) {
                            pulse.toggle()
                        }
                    }
                    .overlay(Text("Pulse").foregroundColor(.white))
            }

            // Row 3: Box with transition
            if showBox {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.purple)
                    .frame(width: 100, height: 100)
                    .transition(.scale)
                    .overlay(Text("Box").foregroundColor(.white))
            }

            Button("Toggle Box") {
                withAnimation(.easeInOut) {
                    showBox.toggle()
                }
            }

            Spacer()
        }
        .padding()
    }
}

struct SwiftUIAnimationsDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAnimationsDemo()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
