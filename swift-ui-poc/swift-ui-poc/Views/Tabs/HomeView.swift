import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Welcome to SwiftUI Learn App")
                    .font(.title2)
                    .bold()
                ProgressView("Your Progress", value: 0.3)
                    .padding()
                NavigationLink("Continue Learning", destination: BasicsView())
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}