import SwiftUI

struct MainTabView: View {
    @StateObject var progressManager = ProgressManager()

    var body: some View {
        TabView {
            HomeView()
            .tabItem {
                Label("Home", systemImage: "house")
            }

            BasicsView()
                .tabItem {
                    Label("Basics", systemImage: "square.grid.2x2")
                }

            UIKitVsSwiftUIView()
                .tabItem {
                    Label("UIKit vs SwiftUI", systemImage: "arrow.left.arrow.right")
                }
        }
        .environmentObject(progressManager)
    }
}


#Preview {
    MainTabView(progressManager: ProgressManager())
}
