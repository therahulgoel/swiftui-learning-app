import SwiftUI

struct StateView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("@State", destination: StateLesson())
                NavigationLink("@Binding", destination: BindingLesson())
                NavigationLink("@ObservedObject", destination: ObservedObjectLesson())
            }
            .navigationTitle("State Management")
        }
    }
}