import SwiftUI

struct StateLesson: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Count: \(count)")
                .font(.title)

            HStack {
                Button("➖") { count -= 1 }
                Button("➕") { count += 1 }
            }
        }
        .padding()
        .navigationTitle("@State")
    }
}