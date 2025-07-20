import SwiftUI

struct TestYourselfView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Quiz: Basic Views", destination: QuizLesson())
            }
            .navigationTitle("Test Yourself")
        }
    }
}