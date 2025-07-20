import SwiftUI

struct FrameAlignmentLesson: View {
    var body: some View {
        VStack {
            Text("Aligned Text")
                .frame(width: 200, height: 50, alignment: .topLeading)
                .background(Color.gray.opacity(0.2))
        }
        .navigationTitle("Frame & Alignment")
    }
}