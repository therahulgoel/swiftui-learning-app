import SwiftUI

struct StackLesson: View {
    @State private var showCode = false
    @State private var codeText: String = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) {
                
                // MARK: Show Code Button
                Button(action: {
                    showCode.toggle()
                    if showCode && codeText.isEmpty {
                        codeText = DemoSourceLoader.loadCode(named: "StackLesson")
                    }
                }) {
                    Text(showCode ? "Hide Code" : "Show Code")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }

                // MARK: Code Viewer
                if showCode {
                    ScrollView(.horizontal) {
                        Text(codeText)
                            .font(.system(.body, design: .monospaced))
                            .padding()
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                    }
                }

                // MARK: VStack Example
                VStack(alignment: .leading, spacing: 10) {
                    Text("VStack: Vertical Stack")
                        .font(.title2).bold()

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Top")
                        Text("Middle")
                        Text("Bottom")
                    }
                    .padding()
                    .background(Color.yellow.opacity(0.2))
                    .cornerRadius(8)

                    Text("Alignment: Leading | Spacing: 5")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                // MARK: HStack Example
                VStack(alignment: .leading, spacing: 10) {
                    Text("HStack: Horizontal Stack")
                        .font(.title2).bold()

                    HStack(alignment: .firstTextBaseline, spacing: 20) {
                        Text("Hello")
                        Text("SwiftUI")
                        Text("World")
                    }
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(8)

                    Text("Alignment: firstTextBaseline | Spacing: 20")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                // MARK: Nested Stacks
                VStack(alignment: .leading, spacing: 10) {
                    Text("Nested Stacks")
                        .font(.title2).bold()

                    HStack {
                        VStack {
                            Text("Left Top")
                            Text("Left Bottom")
                        }

                        VStack {
                            Text("Right Top")
                            Text("Right Bottom")
                        }
                    }
                    .padding()
                    .background(Color.green.opacity(0.2))
                    .cornerRadius(8)

                    Text("HStack with two VStacks inside")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                // MARK: ZStack Basic
                VStack(alignment: .leading, spacing: 10) {
                    Text("ZStack: Layered Stack")
                        .font(.title2).bold()

                    ZStack {
                        Color.red.opacity(0.3)
                        Text("On Top of Red")
                            .font(.title2)
                            .padding()
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(8)
                    }
                    .frame(height: 120)
                    .cornerRadius(8)

                    Text("ZStack layers views back-to-front")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                // MARK: ZStack with Multiple Layers
                VStack(alignment: .leading, spacing: 10) {
                    Text("ZStack with Multiple Layers")
                        .font(.title2).bold()

                    ZStack(alignment: .bottomTrailing) {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.purple.opacity(0.2))
                            .frame(height: 120)

                        Circle()
                            .fill(Color.orange)
                            .frame(width: 50, height: 50)
                            .overlay(Text("1").foregroundColor(.white))

                        Text("Label")
                            .padding(8)
                            .background(Color.black.opacity(0.6))
                            .foregroundColor(.white)
                            .cornerRadius(5)
                            .padding()
                    }

                    Text("Layering Circle and Text on a RoundedRectangle")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

            }
            .padding()
        }
        .navigationTitle("Stacks in SwiftUI")
    }
}
