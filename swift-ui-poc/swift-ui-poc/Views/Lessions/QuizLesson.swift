import SwiftUI

struct QuizLesson: View {
    @State private var selectedAnswer: String?
    @State private var isCorrect: Bool?

    let question = "Which of the following is a layout container in SwiftUI?"
    let options = ["Text", "Image", "VStack", "Color"]
    let correctAnswer = "VStack"

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(question)
                .font(.title3)
                .bold()

            ForEach(options, id: \.self) { option in
                Button(action: {
                    selectedAnswer = option
                    isCorrect = option == correctAnswer
                }) {
                    HStack {
                        Text(option)
                        Spacer()
                        if selectedAnswer == option {
                            Image(systemName: isCorrect == true ? "checkmark.circle" : "x.circle")
                                .foregroundColor(isCorrect == true ? .green : .red)
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                }
            }
        }
        .padding()
        .navigationTitle("Quiz")
    }
}