//
//  SplashScreen.swift
//  Masari
//
//  Created by Taala on 01/04/1445 AH.
//

import SwiftUI

struct SplashScreen: View {
    @State private var animateSplash = true
    @State private var showOnboarding = false
    var body: some View {
        VStack {
            Image("logo")
                .opacity(animateSplash ? 1:0)
                .onAppear {
                    withAnimation(Animation.easeIn(duration: 1.0)) {
                        animateSplash = false
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            showOnboarding = true
                            
                        }
                    }
                }
                .fullScreenCover(isPresented: $showOnboarding) {
                    Onboarding()
                }
        }
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
