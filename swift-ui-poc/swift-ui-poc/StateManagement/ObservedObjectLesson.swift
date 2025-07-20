import SwiftUI

class CounterModel: ObservableObject {
    @Published var value = 0
}

struct ObservedObjectLesson: View {
    @ObservedObject var model = CounterModel()

    var body: some View {
        VStack {
            Text("Value: \(model.value)")
            Button("Increment") {
                model.value += 1
            }
        }
        .padding()
        .navigationTitle("@ObservedObject")
    }
}