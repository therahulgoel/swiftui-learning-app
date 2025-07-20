import SwiftUI

struct TextImageShapeLesson: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello SwiftUI")
                .font(.title)
                .foregroundColor(.blue)

            Image(systemName: "star.fill")
                .font(.system(size: 40))
                .foregroundColor(.yellow)

            Circle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
        }
        .padding()
        .navigationTitle("Text & Shape")
    }
}