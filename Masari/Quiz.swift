import SwiftUI


struct ContentView: View {
    @StateObject private var quiz = Quiz(questions: [
        Question(text: "تحس بصعوبة لما تحاول تعرف بنفسك للناس؟", correctAnswer: true),
        Question(text: "ما تحب تبادر وتبدأ بالكلام؟", correctAnswer: false),
        Question(text: " ما يهمك تكون دايمًا محط انتباه الناس ؟", correctAnswer: false),
        Question(text: "تاخذ وقت طويل عشان تبدأ في الفعاليات الاجتماعية في مكان جديد؟", correctAnswer: false),
        Question(text: "تحس نفسك شخص هادي ومتحفظ نوعا ما؟", correctAnswer: false),
        Question(text: " ما تحس إنك مبسوط ومستمتع لما تشوف مناسبات اجتماعية فيها انشطة ؟", correctAnswer: false),
        Question(text: "تحس نفسك تعبان اكثر بعد ما قضيت وقت مع اصدقائك؟", correctAnswer: false),
        Question(text: "غالبا تلقى صعوبات بأنك تتكلم قدام اشخاص كثار براحة؟", correctAnswer: false),
        Question(text: "لو كنت في مكان زحمه، تتجنب انك تكون بالنص وتكون قريب من الجدار غالبا؟", correctAnswer: false),
        Question(text: "ما تحب تبادر وتبدأ بالكلام؟", correctAnswer: false),
        Question(text:"غالبا ما تكون نشيط ومتحمس؟", correctAnswer: false),
        // Add more questions here
    ])

    var body: some View {
        NavigationView {
            VStack {
                if !quiz.isQuizComplete {
                    QuestionView(question: quiz.currentQuestion, submitAnswer: submitAnswer)
                } else {
                    Text("Quiz Over! Your Score: \(quiz.calculateScore())")
                }
            }
            .navigationTitle("الأسئلة")
        }
    }
    func submitAnswer(isAgree: Bool) {
        quiz.submitAnswer(isAgree: isAgree)
        quiz.moveToNextQuestion()
    }
    
}

struct QuestionView: View {
    let question: Question
    let submitAnswer: (Bool) -> Void

    var body: some View {
        VStack {
            Spacer()
            
            Text(question.text)// لاي شي؟
                .font(.headline)
                .padding()
            HStack(spacing: 20) {
                Button(action: {
                    submitAnswer(true) // Agree
                }) {
                    Text("اوافــق")
                        .padding()
                        .background(Color(UIColor(red: 0.13, green: 0.18, blue: 0.33, alpha: 1.00)))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    submitAnswer(false) // Disagree
                }) {
                    Text("لا اوافق")
                        .padding()
                        .background(Color(UIColor(red: 0.13, green: 0.18, blue: 0.33, alpha: 1.00)))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                }
            }
            
            
            // Spacer()
            //   Text("\(Quiz.currentQuestion) / \(Quiz.questions.count)")
            
            //  ProgressView(value:Double(Quiz.currentQuestion)/Double(Quiz.questions.count))
            //     .scaleEffect(CGSize(width: 0.8, height: 3.0))
            //    .progressViewStyle(LinearProgressViewStyle(tint: Color(uiColor: UIColor(red: 0.96, green: 0.64, blue: 0.38, alpha: 1.00))))
            
            
            
            Text("\(Quiz.currentQuestion) / \(Quiz.questions.count)")
            ProgressView(value: Int (Quiz.currentQuestionIndex)/Int (Quiz.questions.count))
                .scaleEffect(CGSize(width: 1, height: 4))
                .progressViewStyle(LinearProgressViewStyle())
                .padding(.horizontal)
        }

    }
    }




#Preview {
    ContentView()
}
