import SwiftUI

struct NavigationLessonsView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("NavigationStack", destination: NavigationStackLesson())
            }
            .navigationTitle("Navigation")
        }
    }
}