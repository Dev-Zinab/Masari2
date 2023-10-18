//
//  HomeScreen.swift
//  Masari
//
//  Created by Eman Almalki  on 01/04/1445 AH.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedGender: String = ""
    @State private var isNavigationActive = false


    
    var body: some View {
        NavigationView {
            VStack {
                Text("مرحبًا")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                    .padding(.leading, -155.0)
            
                Text("اختار شخصيتك:")
                    .padding()
                .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                .multilineTextAlignment(.trailing)
                .padding(.bottom, 50.0)
                .padding(.leading, -166.0)
            
            HStack {
                
                Button(action: {
                    // Save "female" when the button is tapped
                    selectedGender = "female"
                    UserDefaults.standard.set(selectedGender, forKey: "userGender")
                    isNavigationActive = true
                    print("Select Female")
                    
                }, label: {
                    Image("F")
                        .resizable()
                        .frame(width: 167, height: 161 )
                        .foregroundColor(.accentColor)
                        .padding(.leading, -4.0)
                })
               
                
                Button(action: {
                               // Save "male" when the button is tapped
                               selectedGender = "male"
                               UserDefaults.standard.set(selectedGender, forKey: "userGender")
                               print("Select male")
                               // Activate the navigation link
                               isNavigationActive = true
                           }) {
                               Image("M")
                                   .resizable()
                                   .frame(width: 167, height: 161)
                                   .foregroundColor(.accentColor)
                           }

                
                           NavigationLink(destination: QuizView(), isActive: $isNavigationActive) {
                               EmptyView()
                           }
                
                

                
                
                //                Button("متابعة") {
                //
                //                }
                //                .padding()
                //                .foregroundColor(.white)
                //                .buttonStyle(.bordered)
                //                .tint(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314, opacity: 100.0))
                //
                //
                //
            }
            .padding()
            }
        }
    }
}
    

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
