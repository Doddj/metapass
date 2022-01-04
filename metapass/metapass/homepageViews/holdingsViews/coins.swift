//
//  coins.swift
//  metapass
//
//  Created by Jordan Stone on 12/28/21.
//

import SwiftUI

struct coins: View {
    let data = (1...5).map { "Item \($0)" }
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                ZStack(alignment: .center){
                    //Base
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.16249999403953552, green: 0.16249999403953552, blue: 0.16249999403953552, alpha: 1)))
                        .frame(width: geometry.size.width)
                        
                    //Holdings VStack
                    VStack{
                        HStack {
                            //Price ($48,331.88)
                            Text("$48,331.88").font(.custom("Avenir Medium", size: 38)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(-0.76).multilineTextAlignment(.center)
                            //Percent Gain ZStack
                            ZStack{
                                Text("+0.00%").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.center)
 
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color(#colorLiteral(red: 0.07036178559064865, green: 0.5083333253860474, blue: 0.06142359972000122, alpha: 0.4000000059604645)))
                                    .frame(width: 56, height: 27)
                            }
                            //Absolute Gain
                            Text("+000.00").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.center)
                        }
                        ScrollView{
                            VStack(alignment: .center, spacing: 0){
                                ForEach(data, id: \.self) { item in
                                    coinItem()
//                                        .padding(.leading).padding(.trailing)
                                }
                            }
                        }.padding(.bottom)
                    }
                }
            }
        }
    }
}

struct coins_Previews: PreviewProvider {
    static var previews: some View {
        coins()
    }
}
