//
//  SavingsView.swift
//  metapass
//
//  Created by Jordan Stone on 1/22/22.
//

import SwiftUI

struct SavingsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                HStack{
                    Image(systemName: "dollarsign.circle.fill")    .resizable()
                        .foregroundColor(.white)
                        .frame(width: 35, height: 35)
                        .padding()
                    Spacer()
                    Text("Savings").font(.custom("Avenir Heavy", size: 25)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    Spacer()
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 35, height: 20)
                        .padding()
                    
                }.foregroundColor(.white)
                Spacer()
            
            HStack{
                ZStack{
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width:130, height:43)
                    Image(systemName: "wallet.pass.fill").resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 25).padding()
                }
                Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                }){
                    ZStack{
                    Circle()
                        .fill(LinearGradient(
                                gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.3686274588108063, green: 0.09019608050584793, blue: 0.9215686321258545, alpha: 1)), location: 0),
                            .init(color: Color(#colorLiteral(red: 0.10196078568696976, green: 0.7137255072593689, blue: 0.8470588326454163, alpha: 1)), location: 0.5923990607261658)]),
                                startPoint: UnitPoint(x: 0.6999999889392746, y: -0.09000000505594842),
                                endPoint: UnitPoint(x: 0.3900000036111433, y: 2.299999917540763)))
                    .frame(width: 55, height: 55)
                        Image(systemName: "house.fill").resizable().foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            
                    }
                }

                ZStack{
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width:130, height:43)
                    Image(systemName: "person.2.fill").resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 25)
                        .padding()

                }
            }
            .frame(alignment: .leading)

            }
        }.navigationBarHidden(true)
    }
}

struct SavingsView_Previews: PreviewProvider {
    static var previews: some View {
        SavingsView()
    }
}
