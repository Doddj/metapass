//
//  ReviewPageView.swift
//  metapass
//
//  Created by Jordan Stone on 1/19/22.
//

import SwiftUI

struct ReviewPageView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack{
        Rectangle()
            .fill(LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.3686274588108063, green: 0.09019608050584793, blue: 0.9215686321258545, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.10196078568696976, green: 0.7137255072593689, blue: 0.8470588326454163, alpha: 1)), location: 0.5923990607261658)]),
                    startPoint: UnitPoint(x: 0.6999999889392746, y: -0.09000000505594842),
                    endPoint: UnitPoint(x: 0.3900000036111433, y: 2.299999917540763))).edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                    }){
                    Image(systemName: "arrow.backward").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }.padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Text("Review").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)

                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .leading
                  )
                .padding(.top, 20)
                Text("Buy or sell crypto with cash").font(.custom("Avenir Light", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                Spacer()
                NavigationLink(destination: homepageView()){
                    //review button
                    ZStack{
                        //Rectangle 66
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 305, height: 66)
                        .opacity(0.3)
                        
                        //REVIEW
                        Text("BUY").font(.custom("Avenir Medium", size: 25)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                            
                    }.padding(.bottom, 30)
                }
            }
        }.navigationBarHidden(true)
    }
}

struct ReviewPageView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewPageView()
    }
}
