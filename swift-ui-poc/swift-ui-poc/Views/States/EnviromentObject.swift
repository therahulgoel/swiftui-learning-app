/*
 @EnvironmentObject — For shared view models
 A way to inject and share data (usually from a @ObservableObject) across many views
 Must be provided by a parent using .environmentObject(...)
 Views reactively update when the underlying object changes
*/

import SwiftUI

class Settings: ObservableObject {
    @Published var isDarkMode = false
}

struct ContentView: View {
    var body: some View {
        SettingsView()
            .environmentObject(Settings())
    }
}

struct SettingsView: View {
    @EnvironmentObject var settings: Settings

    var body: some View {
        Toggle("Dark Mode", isOn: $settings.isDarkMode)
    }
}

#Preview {
    SettingsView()
}

