import SwiftUI

struct StackLesson: View {
    var body: some View {
        VStack {
            Text("VStack")
            VStack {
                Text("1")
                Text("2")
                Text("3")
            }.padding().background(Color.yellow.opacity(0.2))

            Text("HStack")
            HStack {
                Text("A")
                Text("B")
                Text("C")
            }.padding().background(Color.blue.opacity(0.2))

            Text("ZStack")
            ZStack {
                Color.red.opacity(0.3)
                Text("On Top")
            }.frame(height: 100)
        }
        .padding()
        .navigationTitle("Stacks")
    }
}