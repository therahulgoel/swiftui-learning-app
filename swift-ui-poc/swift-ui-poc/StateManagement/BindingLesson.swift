import SwiftUI

struct BindingLesson: View {
    @State private var isOn = true

    var body: some View {
        ToggleView(isOn: $isOn)
            .padding()
            .navigationTitle("@Binding")
    }
}

struct ToggleView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Toggle Switch", isOn: $isOn)
    }
}