import SwiftUI

struct SheetsLesson: View {
    @State private var showSheet = false

    var body: some View {
        VStack {
            Button("Show Sheet") {
                showSheet.toggle()
            }
            .sheet(isPresented: $showSheet) {
                Text("This is a sheet!")
                    .font(.title)
                    .padding()
            }
        }
        .navigationTitle("Sheet")
    }
}