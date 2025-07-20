import SwiftUI

struct StateView: View {
    var body: some View {
        NavigationStack {
            ThemedScreen {
                List {
                    NavigationLink("@State", destination: StateLesson())
                    NavigationLink("@Binding", destination: BindingLesson())
                    NavigationLink("@ObservedObject", destination: ObservedObjectLesson())
                }
                .scrollContentBackground(.hidden)
                .background(Color.clear)
                .navigationTitle("State Management")
            }
        }
    }
}
