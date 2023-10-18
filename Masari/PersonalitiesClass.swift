//
//  PersonalitiesClass.swift
//  Masari
//
//  Created by Lujain Alaydie on 18/10/2023.
//

import Foundation
import SwiftUI

class PersonalitiesClass{
    @Published var PersonalityResult : String
    init(PersonalityResult: String) {
        self.PersonalityResult = PersonalityResult
    }
    func viewsResult() ->  AnyView {
        switch PersonalityResult {
        case "FemaleAnalyst":
            return AnyView(
                VStack {
                    Text ("خلصنا !")
                        .font(.system(size: 55))
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).bold()
                        .padding(.bottom, 95.0)
                    Image("analystFemale")
                        .resizable()
                        .padding([.top, .trailing], -35.0)
                        .frame(width:350 , height: 350)
                    Text ("من اجوبتك نشوف ان شخصيتك")
                        .font(.body)
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(.center).bold()
                    Text ("محلله")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.9568627450980393, green: 0.6352941176470588, blue: 0.3803921568627451))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    VStack{
                        Text ("التخصصات المناسبة لك:")
                        Text("التخصصات الإدارية ")
                        Text ("الهندسة")
                    }.font(.body)
                        .kerning(1.5
                        )
                }
            )
            
        case "MaleAnalyst":
            return AnyView(
                VStack {
                    Text ("خلصنا !")
                        .font(.system(size: 55))
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).bold()
                        .padding(.bottom, 95.0)
                    Image("analystMale")
                        .resizable()
                        .padding([.top, .trailing], -35.0)
                        .frame(width:350 , height: 350)
                    Text ("من اجوبتك نشوف ان شخصيتك")
                        .font(.body)
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(.center).bold()
                    Text ("محلل")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.9568627450980393, green: 0.6352941176470588, blue: 0.3803921568627451))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    VStack{
                        Text ("التخصصات المناسبة لك:")
                        Text("التخصصات الإدارية ")
                        Text ("الهندسة")
                    }.font(.body)
                        .kerning(1.5
                        )
                }
            )
        case "FemaleDiplomat":
            return AnyView(
                VStack {
                    Text ("خلصنا !")
                        .font(.system(size: 55))
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).bold()
                        .padding(.bottom, 95.0)
                    Image("diplomatFemale")
                        .resizable()
                        .padding([.top, .trailing], -35.0)
                        .frame(width:350 , height: 350)
                    Text ("من اجوبتك نشوف ان شخصيتك")
                        .font(.body)
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(.center).bold()
                    Text ("دبلوماسية")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.9568627450980393, green: 0.6352941176470588, blue: 0.3803921568627451))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    VStack{
                        Text ("التخصصات المناسبة لك:")
                        Text("التصاميم و الفنون  ")
                        Text ("خدمة مجتمع")
                    }.font(.body)
                        .kerning(1.5
                        )
                }
            )
        case "MaleDiplomat":
            return AnyView(
                VStack {
                    Text ("خلصنا !")
                        .font(.system(size: 55))
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(.center).bold()
                        .padding(.bottom, 95.0)
                    Image("diplomatMale")
                        .resizable()
                        .padding([.top, .trailing], -35.0)
                        .frame(width:350 , height: 350)
                    Text ("من اجوبتك نشوف ان شخصيتك")
                        .font(.body)
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(.center).bold()
                    Text ("دبلوماسية")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.9568627450980393, green: 0.6352941176470588, blue: 0.3803921568627451))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    VStack{
                        Text ("التخصصات المناسبة لك:")
                        Text("التصاميم و الفنون  ")
                        Text ("خدمة مجتمع")
                    }.font(.body)
                        .kerning(1.5
                        )
                }
                
            )
        case "FemaleExplorer":
            return AnyView(
                VStack {
                    Text ("خلصنا !")
                        .font(.system(size: 55))
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).bold()
                        .padding(.bottom, 95.0)
                    Image("explorerFemale")
                        .resizable()
                        .padding([.top, .leading, .trailing], -35.0)
                        .frame(width:350 , height: 350)
                    Text ("من اجوبتك نشوف ان شخصيتك")
                        .font(.body)
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(.center).bold()
                    Text ("مستكشفة")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.9568627450980393, green: 0.6352941176470588, blue: 0.3803921568627451))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    VStack{
                        Text ("التخصصات المناسبة لك:")
                        Text("احصاء")
                        Text ("هندسة")
                        Text ("فضاء")
                        Text ("علوم")
                        
                    }.font(.body)
                        .kerning(1.5
                        )
                }
            )
            
        case "MaleExplorer":
            return AnyView(
                VStack {
                    Text ("خلصنا !")
                        .font(.system(size: 55))
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).bold()
                        .padding(.bottom, 95.0)
                    Image("explorerMale")
                        .resizable()
                        .padding([.top, .leading, .trailing], -35.0)
                        .frame(width:350 , height: 350)
                    Text ("من اجوبتك نشوف ان شخصيتك")
                        .font(.body)
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(.center).bold()
                    Text ("مستكشف")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.9568627450980393, green: 0.6352941176470588, blue: 0.3803921568627451))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    VStack{
                        Text ("التخصصات المناسبة لك:")
                        Text("احصاء")
                        Text ("هندسة")
                        Text ("فضاء")
                        Text ("علوم")
                        
                    }.font(.body)
                        .kerning(1.5
                        )
                }
            )
        case "FemaleSentinel":
            return AnyView(
                VStack {
                    Text ("خلصنا !")
                    .font(.system(size: 55))
                    .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).bold()
                    .padding(.bottom, 95.0)
                Image("sentinelFemale")
                    .resizable()
                    .padding([.top, .leading, .trailing], -35.0)
                    .frame(width:350 , height: 350)
                Text ("من اجوبتك نشوف ان شخصيتك")
                    .font(.body)
                    .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                    .multilineTextAlignment(.center).bold()
                Text ("منظمة")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.9568627450980393, green: 0.6352941176470588, blue: 0.3803921568627451))
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                VStack{
                    Text ("التخصصات المناسبة لك:")
                    Text("التخصصات الادارية")
                    Text ("علوم الحاسب")
                    Text (" التخصصات الطبية")
                    
                }.font(.body)
                    .kerning(1.5
                    )
            }
                )
        case "MaleSentinel":
            return AnyView(
                VStack {
                    Text ("خلصنا !")
                        .font(.system(size: 55))
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).bold()
                        .padding(.bottom, 95.0)
                    Image("sentinelMale")
                        .resizable()
                        .padding([.top, .leading, .trailing], -35.0)
                        .frame(width:350 , height: 350)
                    Text ("من اجوبتك نشوف ان شخصيتك")
                        .font(.body)
                        .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                        .multilineTextAlignment(.center).bold()
                    Text ("منظم")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.9568627450980393, green: 0.6352941176470588, blue: 0.3803921568627451))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    VStack{
                        Text ("التخصصات المناسبة لك:")
                            .padding()
                        Text("التخصصات الادارية")
                        Text ("علوم الحاسب")
                        Text (" التخصصات الطبية")
                        
                    }.font(.body)
                        .kerning(1.5
                        )
                }
            )
        default:
            return AnyView(
                VStack {
                    Text("unknown")
                }
            )
        }
    }
}
