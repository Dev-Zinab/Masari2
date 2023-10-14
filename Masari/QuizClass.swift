import Foundation


class Quiz: ObservableObject {
    @Published var currentQuestion: Question
     var questions: [Question]
     var userAnswers: [Bool?]
     var currentQuestionIndex: Int = 0

    init(questions: [Question]) {
        self.questions = questions
        self.userAnswers = Array(repeating: nil, count: questions.count)
        self.currentQuestion = questions[0]
    }

    var isQuizComplete: Bool {
        userAnswers.allSatisfy { $0 != nil } //for each
    }

    func submitAnswer(isAgree: Bool) {              //مافهمت
        userAnswers[currentQuestionIndex] = isAgree
    }

    func calculateScore() -> Int {
        var score = 0

        for (index, question) in questions.enumerated() {//قيم محددة مايخرج عنها بس هنا وين القيم مدخلتها 
            if let userAnswer = userAnswers[index], userAnswer == question.correctAnswer {
                score += 1
            }
        }

        return score
    }
    var currentQuestionNumber: Int {
            // Calculate the current question number based on the current index
            return currentQuestionIndex + 1
        }

    func moveToNextQuestion() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            currentQuestion = questions[currentQuestionIndex]
        }
    }
}

struct Question {
    let text: String
    let correctAnswer: Bool // "Agree" (true) or "Disagree" (false)
} 
