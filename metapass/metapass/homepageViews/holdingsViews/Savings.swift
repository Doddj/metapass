//
//  Savings.swift
//  metapass
//
//  Created by Jordan Stone on 12/28/21.
//

import SwiftUI

struct Savings: View {
    let data = (1...5).map { "Item \($0)" }
    var body: some View {
//        GeometryReader{ geometry in
            ZStack(alignment: .center){
                //Rectangle 26
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 0.16249999403953552, green: 0.16249999403953552, blue: 0.16249999403953552, alpha: 1)))
//                    .frame(width: geometry.size.width)
                VStack{
                    HStack{
                        //Savings
                        Text("Savings").font(.custom("Avenir Heavy", size: 25)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        VStack{
                            //$16,200
                            Text("$16,200").font(.custom("Avenir Book", size: 22)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                            //+$530.30
                            Text("+$530.30").font(.custom("Avenir Book", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.07, green: 0.51, blue: 0.06, alpha: 1))).multilineTextAlignment(.center)
                        }
                    }
                    ScrollView{
                        VStack(alignment: .center, spacing: 0){
                            ForEach(data, id: \.self) { item in
                                SavingItem()
                            }
                        }
                    }.padding(.bottom)
                }
            }
//        }
    }
}

struct Savings_Previews: PreviewProvider {
    static var previews: some View {
        Savings()
    }
}
