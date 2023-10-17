//
//  DiplomatMale.swift
//  Masari
//
//  Created by Rahaf Almasoud on 02/04/1445 AH.
//
//  DiplomatMale

import SwiftUI

struct DiplomatMale: View {
    var body: some View {
        VStack() {
            Text ("خلصنا !")
                .font(.system(size: 55))
                .foregroundColor(Color(red: 0.12941176470588237, green: 0.17647058823529413, blue: 0.3254901960784314))
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).bold()
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
    }
}

#Preview {
    DiplomatMale()
}

