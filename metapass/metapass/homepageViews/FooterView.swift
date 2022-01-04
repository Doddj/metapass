//
//  FooterView.swift
//  metapass
//
//  Created by Jordan Stone on 12/29/21.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack{
            ZStack{
                Rectangle()
                    .fill(Color.clear)
                    .frame(width:363/2, height:43)
                Image(systemName: "wallet.pass.fill").resizable()
                    .foregroundColor(.white)
                    .frame(width: 30, height: 25).padding()
            }
            NavigationLink(destination: MakeTransactionView()) {
                Circle()
                    .fill(LinearGradient(
                            gradient: Gradient(stops: [
                        .init(color: Color(#colorLiteral(red: 0.3686274588108063, green: 0.09019608050584793, blue: 0.9215686321258545, alpha: 1)), location: 0),
                        .init(color: Color(#colorLiteral(red: 0.10196078568696976, green: 0.7137255072593689, blue: 0.8470588326454163, alpha: 1)), location: 0.5923990607261658)]),
                            startPoint: UnitPoint(x: 0.6999999889392746, y: -0.09000000505594842),
                            endPoint: UnitPoint(x: 0.3900000036111433, y: 2.299999917540763)))
                .frame(width: 55, height: 55)
            }.navigationBarBackButtonHidden(true)
            //                            }
            //Ellipse 6

            ZStack{
                Rectangle()
                    .fill(Color.clear)
                    .frame(width:363/2, height:43)
                Image(systemName: "person.2.fill").resizable()
                    .foregroundColor(.white)
                    .frame(width: 30, height: 25)
                    .padding()

            }
        }
        .frame(alignment: .leading)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
