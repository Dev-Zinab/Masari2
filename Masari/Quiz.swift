import SwiftUI


struct ContentView: View {
    var arrayOfQuizzes: [[Quiz]] = []

        init() {
            arrayOfQuizzes =
            [
                [quiz1],
                [quiz2],
                [quiz3],
                [quiz4]
                            ]
        }
    
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
        Question(text: "  غالبا تغرق بالتفكير لما تمشي بالمناظر الطبيعية؟", correctAnswer: true),
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
//    @StateObject private var quiz5 = Quiz(questions: [
//        
//        Question(text: "سهل عليك الاسترخاء والتركيز حتى؟", correctAnswer: true),
//        Question(text: "تحس أنك أفضل من الاشخاص الآخرين؟", correctAnswer: false),
//        Question(text: " مزاجك يتغير بسرعه ؟", correctAnswer: false),
//        Question(text: "دايم تحس بالغيرة من الاشخاص الآخرين؟", correctAnswer: false),
//        Question(text: "لما ما يرد عليك شخص بالايميل، تحس بالقلق انك قلت شيء غلط؟", correctAnswer: false),
//        Question(text: "  نادر ما تحس بعدم الأمان؟", correctAnswer: true),
//        Question(text: "كثير ما تخلي اشيائك الخاصة في غير مكانها؟", correctAnswer: false),
//        Question(text: "تشوف نفسك مستقر جدا في الجانب العاطفي؟", correctAnswer: true),
//        Question(text: "تقلق كثير بتفكير االآخرين؟", correctAnswer: false),
//        
//        Question(text: "تحس انك قلق جدا بالمواقف الصعبه؟", correctAnswer: false),
//        Question(text: "غالبا تحس انك مضطر لتبرير افعالك للآخرين؟", correctAnswer: false),
//        //  Question(text:"نادر ما يقدرون يضايقونك الاشخاص؟", correctAnswer: true),
//    ])
    
    var body: some View {
           NavigationView {
               VStack {
                   if !arrayOfQuizzes.isQuizComplete {
                       QuestionView(question: arrayOfQuizzes.currentQuestion, submitAnswer: submitAnswer, arrayOfQuizzes: arrayOfQuizzes)
                   } else {
                       Text("Quiz Over! Your Score: \(quiz1.calculateScore())")
                   }
               }
               .navigationTitle("الأسئلة")
           }
       }
       func submitAnswer(isAgree: Bool) {
           quiz1.submitAnswer(isAgree: isAgree)
           quiz1.moveToNextQuestion()
       }
       
   }

   struct QuestionView: View {
       let question: Question
       let submitAnswer: (Bool) -> Void
       @ObservedObject var quiz: Quiz // Make sure to pass the quiz instance
       
        
        var body: some View {
            
            VStack {
                Spacer()
                
                Text(question.text)
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
                Text("\(quiz.currentQuestionIndex + 1) / \(quiz.questions.count)")
                
                ProgressView(value:Double(quiz.currentQuestionIndex)/Double(quiz.questions.count))
                    .scaleEffect(CGSize(width: 0.8, height: 3.0))
                    .progressViewStyle(LinearProgressViewStyle(tint: Color(uiColor: UIColor(red: 0.96, green: 0.64, blue: 0.38, alpha: 1.00))))
                
                
                
                
                
            }
            
        }
    }
    
    
    
    
    #Preview {
        ContentView()
    }
}
