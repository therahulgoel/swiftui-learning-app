import SwiftUI

class ProgressManager: ObservableObject {
    @AppStorage("progress") var progress: Double = 0.0

    func markLessonComplete() {
        if progress < 1.0 {
            progress += 0.1
        }
    }
}