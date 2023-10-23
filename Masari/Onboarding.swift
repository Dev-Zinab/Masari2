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
                

                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding (.horizontal,16)
                    .frame(height:200)
                

                Text ("تطبيق مساري\n\n يساعدك في معرفة تخصصك الجامعي  \n لتحديد مسارك المهني مستقبلًا."
)
                .foregroundColor(Color(UIColor(red: 0.13, green: 0.18, blue: 0.33, alpha: 1.00)))                .font(.headline)
                    .fontWeight(.bold)
                    .kerning(1.2)
                    .multilineTextAlignment(.center)
            }
            
        }
    }
    
    struct Onboarding_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding()
        }
    }
}
