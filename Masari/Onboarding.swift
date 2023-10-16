//
//  Onboarding.swift
//  Masari
//
//  Created by Taala on 01/04/1445 AH.
//

import SwiftUI

struct Onboarding: View {
    @State private var onboardingShown = false
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Spacer()
                    NavigationLink {
                        HomeScreen().navigationBarBackButtonHidden()
                    }
                    label :{
                        Text("X")
                            .padding()
                            .foregroundColor(.gray)
                            .cornerRadius(8)
                        
                    }
                }
                .padding()
                Spacer(minLength: 0)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding (.horizontal,16)
                    .frame(height:300)
                
                Spacer(minLength: 80)
                
                Text("تطبيق مساري يساعدك في معرفة تخصصك الجامعي لتحديد مسارك المهني مستقبلًا")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .kerning(1.2)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    .padding(.bottom)
                    .foregroundColor(Color("AccentColor"))
            }
            
        }
    }
    
    struct Onboarding_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding()
        }
    }
}
