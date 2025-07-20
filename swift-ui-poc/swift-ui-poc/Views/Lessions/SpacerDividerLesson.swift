import SwiftUI

struct SpacerDividerLesson: View {
    var body: some View {
        VStack {
            Text("Top Text")
            Spacer()
            Divider()
            Text("Bottom Text")
        }
        .padding()
        .navigationTitle("Spacer & Divider")
    }
}