import SwiftUI

struct NavigationStackLesson: View {
    var body: some View {
        NavigationLink("Go to Detail") {
            Text("Detail View")
        }
        .navigationTitle("NavigationStack")
        .padding()
    }
}