//
//  PersonalityResults.swift
//  Masari
//
//  Created by Rahaf Almasoud on 02/04/1445 AH.
//

import SwiftUI

struct PersonalityResults: View {
    @State var PersonalityResults: String
    let personalities: PersonalitiesClass // Declare the PersonalitiesClass instance
    @State private var isBackButtonHidden = true // Set this state variable to hide or show the back button
    
    init(PersonalityResult: String) {
        self.PersonalityResults = PersonalityResult
        self.personalities = PersonalitiesClass(PersonalityResult: PersonalityResult)
        
    }
    
    var body: some View {
        personalities.viewsResult()
            .navigationBarTitle("My View", displayMode: .inline)
            .navigationBarHidden(true) // This hides the navigation bar
            .navigationBarBackButtonHidden(isBackButtonHidden)
    }
}


#Preview {
    
    PersonalityResults(PersonalityResult: "FemaleDiplomat")
}
