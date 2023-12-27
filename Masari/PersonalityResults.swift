import SwiftUI

struct PersonalityResults: View {
    @State var PersonalityResults: String
    let personalities: PersonalitiesClass // Declare the PersonalitiesClass instance
    @State private var isBackButtonHidden = true // Set this state variable to hide or show the back button
    @State private var navigateToHome = false // تتبع حالة الانتقال إلى الصفحة الرئيسية

    init(PersonalityResult: String) {
        self.PersonalityResults = PersonalityResult
        self.personalities = PersonalitiesClass(PersonalityResult: PersonalityResult)
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                // زر للانتقال إلى صفحة HomeScreen
                NavigationLink(
                    destination: HomeScreen(),
                    isActive: $navigateToHome,
                    label: {
                        Image(systemName: "house.circle")
                    //    Text("البداية")
                            .padding()
                            .foregroundColor(Color(uiColor: UIColor(red: 0.96, green: 0.64, blue: 0.38, alpha: 1.00)))
                            .cornerRadius(8)
                    }
                )
            }

            personalities.viewsResult()
                .navigationBarTitle("My View", displayMode: .inline)
                .navigationBarHidden(true) // This hides the navigation bar
                .navigationBarBackButtonHidden(isBackButtonHidden)
        }
        .background(Color.white)
        .ignoresSafeArea()

    }
}

#Preview {
    PersonalityResults(PersonalityResult: "FemaleDiplomat")
}
