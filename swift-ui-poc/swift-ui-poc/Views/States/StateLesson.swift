/*
 @State — For local, view-owned state
 Owned and managed by the view itself
 Private to the view: not shared with others
 Typically used for simple, transient state like toggles, counters, text input, etc.
 When the value changes, the view re-renders itself
 */

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

#Preview {
    StateLesson()
}
