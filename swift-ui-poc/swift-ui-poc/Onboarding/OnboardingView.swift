import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Text("👋 Welcome to SwiftUI Learn!")
                .font(.title)
                .multilineTextAlignment(.center)

            Text("Learn SwiftUI step by step with real examples")
                .multilineTextAlignment(.center)

            Button("Get Started") {
                hasSeenOnboarding = true
            }
            .padding()
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    OnboardingView(hasSeenOnboarding: false)
}
