

import SwiftUI


struct QuizView: View {
    //    var arrayOfQuizzes: [Quiz] = []
    @State private var currentQuizIndex = 0
    
    var arrayOfQuizzes: [Quiz] {
        [quiz1, quiz2, quiz3, quiz4]
    }
    
    @State private var activeQuizIndex = 0
    
    let userDefaultsKey = "QuizResults"
    
    @State private var shouldShowAnalyst = false
    @State private var quizzesFinished = false  


    @StateObject private var quiz1 = Quiz(questions: [
        
        Question(text: "تحس بصعوبة لما تحاول تعرف بنفسك للناس؟", correctAnswer: true),
        Question(text: "ما تحب تبادر وتبدأ بالكلام؟", correctAnswer: true),
        Question(text: " ما يهمك تكون دايمًا محط انتباه الناس ؟", correctAnswer: true),
        Question(text: "ما تاخذ وقت طويل عشان تبدأ في الفعاليات الاجتماعية في مكان جديد؟", correctAnswer: false),
        Question(text: "تحس إنك مبسوط و مستمتع لما تشوف مناسبات اجتماعية فيها انشطة؟", correctAnswer: false),
        Question(text: "  تحس إنك شخص هادي و متحفظ نوعا ما؟", correctAnswer: false),
        Question(text: "تحس نفسك نشيط اكثر بعد قضاء وقت مع اصدقائك؟", correctAnswer: true),
        Question(text: "غالبا تلقى صعوبات بأنك تتكلم قدام اشخاص كثار براحة؟", correctAnswer: true),
        Question(text: "لو كنت في مكان زحمه، تتجنب انك تكون بالنص وتكون قريب من الجدار غالبا؟", correctAnswer: true),
        Question(text: "غالبًا انت شخص مبادر بالسوالف؟", correctAnswer: false),
        Question(text:"غالبا تكون نشيط ومتحمس؟", correctAnswer: false),
    ])
    @StateObject private var quiz2 = Quiz(questions: [
        
        Question(text: "دايم تكون سرحان لدرجة تنسى اللي حولك؟", correctAnswer: false),
        Question(text: "نادر ما تسوي شيء من دافع الفضول؟", correctAnswer: true),
        Question(text: " تشوف نفسك مبدع عمليًا اكثر من الإبداع الابتكاري؟", correctAnswer: true),
        Question(text: "غالبا تغرق بالتفكير لما تمشي بالمناظر الطبيعية؟", correctAnswer: true),
        Question(text: "نادر ما تأخذك الأفكار و الأوهام؟", correctAnswer: false),
        Question(text: "احلامك مبنية على احداث واقعية؟", correctAnswer: false),
        Question(text: "تقضي وقت كثير بالبحث عن افكار غير واقعية خيالية ومثيرة للاهتمام بنفس الوقت؟", correctAnswer: false),
        Question(text: "تفكر كثير ليش الانسان موجود؟", correctAnswer: false),
        Question(text: "دايم بالك مشغول بالخطط والأفكار اللي ما اكتُشفت؟", correctAnswer: true),
        Question(text:"تعتمد على تجاربك اكثر من افكارك وخيالاتك بشكل عام؟", correctAnswer: false),
    ])
    @StateObject private var quiz3 = Quiz(questions: [
        
        Question(text: "يهمك ما تضايق احد اكثر من فوزك بالنقاش؟", correctAnswer: true),
        Question(text: "صعب عليك توصل مشاعر شخص، للناس الثانيه؟", correctAnswer: false),
        Question(text: " في المناقشات، الحقيقة لازم تكون من اهم الأشياء الحساسة للشخص ؟", correctAnswer: false),
        Question(text: "نادر ما يهمك تأثر أفعالك على الاشخاص؟", correctAnswer: false),
        Question(text: " لو كنت والد، تفضل ولدك يكبر عاطفي أكثر من كونه ذكيًا؟", correctAnswer: true),
        Question(text: "  مشاعرك تتحكم فيك أكثر من انك تحكمك فيها؟", correctAnswer: true),
        Question(text: "لو كنت صاحب عمل، تلقى  صعب جدًا عليك فصل الموظفين المخلصين  رغم ضعف أدائهم؟", correctAnswer: true),
        Question(text: "تشوف المنطق أهم من المشاعر لما يكون الموضوع يتعلق باتخاذ قرارات مهمة؟", correctAnswer: false),
        Question(text: "اذا كان صديقك حزين على موضوع ما، غالبا تدعمه عاطفيا بدال ما تقترح طرق ثانية للتعامل مع المشكلة؟", correctAnswer: true),
        Question(text: "الالتزام بالصح اهم من روح التعاون لما يكون الموضوع عن العمل الجماعي؟", correctAnswer: false),
        Question(text:"تشوف ان وجهات النظر والاراء لازم تحترم بغض النظر اذا كنت تتفق أو لا؟", correctAnswer: true),
        Question(text:"تشوف ان حب الناس لك اهم من كونك قوي؟", correctAnswer: true),
        Question(text:"ما تسمح للناس يأثرون على أفعالك؟", correctAnswer: false),
        
    ])
    @StateObject private var quiz4 = Quiz(questions: [
        
        Question(text: "تحاول ترد على رسايل الايميل بأقرب وقت وما تحب تشوف الرسايل متراكمة وغير منظمة؟", correctAnswer: false),
        Question(text: "التنظيم بالنسبة لك اهم من التأقلم والتكيف؟", correctAnswer: false),
        Question(text: " بيئة العمل والبيت عندك مترتبة إلى حد ما ؟", correctAnswer: false),
        Question(text: "خطط سفرك غالبا مدروسة؟", correctAnswer: false),
        Question(text: "اسلوبك بالعمل عشوائي ومستهلك للطاقه اكثر من كونه عملي ومنظم؟", correctAnswer: true),
        Question(text: "  القدرة على وضع خطة والالتزام بها أهم جزء في يومك؟", correctAnswer: false),
        Question(text: "  تميل للارتجال اكثر من  التخطيط بدقه؟", correctAnswer: true),
        Question(text: "تفضل الارتجال في الوصول على وضع خطة مفصلة؟", correctAnswer: true),
        Question(text: "الخيارات المفتوحة بالنسبة لك اهم من قوائم المهام؟", correctAnswer: true),
        Question(text: "ما تلقى صعوبة في انك تحط جدول زمني وتلتزم فيه؟", correctAnswer: false),
        Question(text:"تميل للتأجيل الى اخر الوقت؟", correctAnswer: true),
    ])
    
    var body: some View {
        NavigationView {
            VStack {
                if activeQuizIndex < arrayOfQuizzes.count {
                    if arrayOfQuizzes[activeQuizIndex].currentQuestionIndex < arrayOfQuizzes[activeQuizIndex].questions.count {
                        QuestionView(
                            submitAnswer: submitAnswer, question: arrayOfQuizzes[activeQuizIndex].currentQuestion,
                            quiz: arrayOfQuizzes[activeQuizIndex]
                        )
                    } else {
                        Text("Quiz \(activeQuizIndex + 1) is complete.")
                    }
                }
                if activeQuizIndex >= arrayOfQuizzes.count {
                    // Calculate and display scores
                    let quizScores = calculateScores()
                   let  personalityType = calculatePersonalityType(quizScores: quizScores)
                    
                    if personalityType == "INTJ" || personalityType == "INTP" || personalityType == "ENTJ" || personalityType == "ENTP" && UserDefaults.standard.string(forKey: "userGender") == "male"{
                        NavigationLink(destination: PersonalityResults(PersonalityResult: "MaleAnalyst")) {
                            Text("View your result")
                                .font(.title)
                            
                        }
                    }else if personalityType == "INTJ" || personalityType == "INTP" || personalityType == "ENTJ" || personalityType == "ENTP" && UserDefaults.standard.string(forKey: "userGender") == "female"{
                        NavigationLink(destination: PersonalityResults(PersonalityResult: "FemaleAnalyst")) {
                            Text("View your result")
                                .font(.title)
                        }
                    }else if personalityType == "INFJ" || personalityType == "INFP" || personalityType == "ENFJ" || personalityType == "ENFP" && UserDefaults.standard.string(forKey: "userGender") == "female"{
                        NavigationLink(destination: PersonalityResults(PersonalityResult: "FemaleDiplomat")) {
                            Text("View your result")
                                .font(.title)
                        }
                    }else if personalityType == "INFJ" || personalityType == "INFP" || personalityType == "ENFJ" || personalityType == "ENFP" && UserDefaults.standard.string(forKey: "userGender") == "male"{
                        NavigationLink(destination: PersonalityResults(PersonalityResult: "MaleDiplomat")) {
                            Text("View your result")
                                .font(.title)
                        }
                    }else if personalityType == "ISTJ" || personalityType == "ISFJ" || personalityType == "ESTJ" || personalityType == "ESFJ" && UserDefaults.standard.string(forKey: "userGender") == "female"{
                        NavigationLink(destination: PersonalityResults(PersonalityResult: "FemaleSentinel")) {
                            Text("View your result")
                                .font(.title)
                        }
                    }else if personalityType == "ISTJ" || personalityType == "ISFJ" || personalityType == "ESTJ" || personalityType == "ESFJ" && UserDefaults.standard.string(forKey: "userGender") == "male"{
                        NavigationLink(destination: PersonalityResults(PersonalityResult: "MaleSentinel")) {
                            Text("View your result")
                                .font(.title)
                        }
                    }else if personalityType == "ISTP" || personalityType == "ISFP" || personalityType == "ESTP" || personalityType == "ESFP"  && UserDefaults.standard.string(forKey: "userGender") == "female"{
                        NavigationLink(destination: PersonalityResults(PersonalityResult: "FemaleExplorer")) {
                            Text("View your result")
                                .font(.title)
                        }
                    }
                    else if personalityType == "ISTP" || personalityType == "ISFP" || personalityType == "ESTP" || personalityType == "ESFP"  && UserDefaults.standard.string(forKey: "userGender") == "male"{
                        NavigationLink(destination: PersonalityResults(PersonalityResult: "MaleExplorer")) {
                            Text("View your result")
                                .font(.title)
                        }
                    }
                    
//
//
//                    ForEach(0..<quizScores.count, id: \.self) { index in
//                        Text("Quiz \(index + 1) Score: \(quizScores[index])")
//
//                    }
                    Text("Personality type: \(personalityType)")
                    
                    
                }
                
                //progress
                var overallProgress: Double {
                    let totalQuestions = arrayOfQuizzes.reduce(0) { $0 + $1.questions.count }
                    let currentQuestionIndex = arrayOfQuizzes.reduce(0) { $0 + $1.currentQuestionIndex }
                    return totalQuestions > 0 ? Double(currentQuestionIndex) / Double(totalQuestions) : 0
                }
                
                if activeQuizIndex < arrayOfQuizzes.count && arrayOfQuizzes[activeQuizIndex].currentQuestionIndex < arrayOfQuizzes[activeQuizIndex].questions.count {
                    let totalQuestions = arrayOfQuizzes.reduce(0) { $0 + $1.questions.count }
                    let overallProgress = totalQuestions > 0 ? Double(overallQuestionIndex + 1) / Double(totalQuestions) : 0
                    
                    Text("\(overallQuestionIndex + 1)/\(totalQuestions)")
                    
                    ProgressView(value: overallProgress)
                        .scaleEffect(CGSize(width: 0.8, height: 3.0))
                        .progressViewStyle(LinearProgressViewStyle(tint: Color(uiColor: UIColor(red: 0.96, green: 0.64, blue: 0.38, alpha: 1.00))))
                }
            }
            .navigationTitle("الأسئلة")

        }
    }
    
    func submitAnswer(isAgree: Bool) {
        // Submit the answer and move to the next question
        arrayOfQuizzes[activeQuizIndex].submitAnswer(isAgree: isAgree)
        arrayOfQuizzes[activeQuizIndex].moveToNextQuestion()
        
        // Check if the current quiz is complete
        if arrayOfQuizzes[activeQuizIndex].isQuizComplete {
            // Calculate the score for the current quiz
            let quiz = arrayOfQuizzes[activeQuizIndex]
            let score = calculateQuizScore(quiz: quiz)
            
            // Save the result in UserDefaults
            let quizResult = QuizResult(quizTitle: "Quiz \(activeQuizIndex + 1)", score: score)
            saveQuizResult(quizResult)
            
            activeQuizIndex += 1  // Move to the next quiz
        }
        
        
    }
    func calculatePersonalityType(quizScores: [Int]) -> String {
        let quiz1Score = quizScores[0]
        let quiz2Score = quizScores[1]
        let quiz3Score = quizScores[2]
        let quiz4Score = quizScores[3]

        print(quiz1Score)
        print(quiz2Score)
        print(quiz3Score)
        print(quiz4Score)


        if quiz1Score >= 6 && quiz2Score >= 6 && quiz3Score >= 7 && quiz4Score >= 6 {
            return "ISFP"
        } else if quiz1Score >= 6 && quiz2Score <= 5 && quiz3Score >= 7 && quiz4Score >= 6 {
            return "INFP"
        } else if quiz1Score >= 6 && quiz2Score >= 5 && quiz3Score <= 7 && quiz4Score >= 6 {
            return "ISTP"
        } else if quiz1Score >= 6 && quiz2Score >= 5 && quiz3Score >= 7 && quiz4Score <= 6 {
            return "ISFJ"
        } else if quiz1Score <= 6 && quiz2Score <= 5 && quiz3Score <= 7 && quiz4Score <= 6 {
            return "ENTJ"
        } else if quiz1Score <= 6 && quiz2Score <= 5 && quiz3Score >= 7 && quiz4Score >= 6 {
            return "ENFP"
        } else if quiz1Score <= 6 && quiz2Score <= 5 && quiz3Score >= 7 && quiz4Score <= 6 {
            return "ENFJ"
        } else if quiz1Score >= 6 && quiz2Score <= 5 && quiz3Score <= 7 && quiz4Score >= 6 {
            return "INTP"
        } else if quiz1Score <= 6 && quiz2Score >= 5 && quiz3Score <= 7 && quiz4Score >= 6 {
            return "ESTP"
        } else if quiz1Score <= 6 && quiz2Score >= 5 && quiz3Score <= 7 && quiz4Score <= 6 {
            return "ESTJ"
        } else if quiz1Score >= 6 && quiz2Score >= 5 && quiz3Score <= 7 && quiz4Score <= 6 {
            return "ISTJ"
        } else if quiz1Score <= 6 && quiz2Score >= 5 && quiz3Score >= 7 && quiz4Score <= 6 {
            return "ESFJ"
        } else if quiz1Score >= 6 && quiz2Score <= 5 && quiz3Score >= 7 && quiz4Score <= 6 {
            return "INFJ"
        } else if quiz1Score <= 6 && quiz2Score >= 5 && quiz3Score >= 7 && quiz4Score <= 6 {
            return "ESFJ"
        } else if quiz1Score >= 6 && quiz2Score <= 5 && quiz3Score >= 7 && quiz4Score <= 6 {
            return "INFJ"
        } else if quiz1Score >= 6 && quiz2Score <= 5 && quiz3Score <= 7 && quiz4Score <= 6 {
                return "INTJ"
            } else {
                return "Personality Type not determined"
            }
        }
    
    
    func calculateQuizScore(quiz: Quiz) -> Int {
        var score = 0
        
        for question in quiz.questions {
            if question.isCorrect(userAnswer: true) {
                score += 1
            }
        }
        
        return score
    }
    
    func calculateScores() -> [Int] {
        var scores: [Int] = []
        for quiz in arrayOfQuizzes {
            let score = quiz.questions.enumerated().reduce(0) { result, item in
                let (index, question) = item
                return result + (question.isCorrect(userAnswer: quiz.userAnswers[index] ?? false) ? 1 : 0)
            }
            scores.append(score)
        }
        return scores
    }
    

    func saveQuizResult(_ result: QuizResult) {
        // Retrieve existing quiz results from UserDefaults
        if let data = UserDefaults.standard.data(forKey: userDefaultsKey) {
            do {
                var quizResults = try JSONDecoder().decode([QuizResult].self, from: data)
                quizResults.append(result)
                let newData = try JSONEncoder().encode(quizResults)
                UserDefaults.standard.set(newData, forKey: userDefaultsKey)
            } catch {
                print("Error decoding or encoding quiz results: \(error)")
            }
        } else {
            // No existing results, create a new array and save
            let quizResults = [result]
            if let newData = try? JSONEncoder().encode(quizResults) {
                UserDefaults.standard.set(newData, forKey: userDefaultsKey)
            }
        }
    }
    
    var overallQuestionIndex: Int {
            let currentIndex = activeQuizIndex < arrayOfQuizzes.count ? arrayOfQuizzes[activeQuizIndex].currentQuestionIndex : 0
            let previousQuizzesQuestions = activeQuizIndex < arrayOfQuizzes.count ? arrayOfQuizzes[0..<activeQuizIndex].reduce(0) { $0 + $1.questions.count } : 0
            return previousQuizzesQuestions + currentIndex
        }
    
    
}
    
struct QuizResult: Codable {
    var quizTitle: String
    var score: Int
}


   struct QuestionView: View {
       let submitAnswer: (Bool) -> Void
       let question : Question
       @ObservedObject var quiz: Quiz // Make sure to pass the quiz instance
       
        
        var body: some View {
            
            VStack {
                Spacer()
                
                Text(quiz.currentQuestion.text)
                    .foregroundColor(Color(UIColor(red: 0.13, green: 0.18, blue: 0.33, alpha: 1.00)))
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
                
                
                Spacer()

                
                
            }
            
        }
    }

    
    
    #Preview {
        QuizView()
    }


    
//    #Preview {
//        QuizView
//    }
struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}

