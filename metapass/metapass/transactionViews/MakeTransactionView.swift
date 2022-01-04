//
//  MakeTransactionView.swift
//  metapass
//
//  Created by Jordan Stone on 12/29/21.
//

import SwiftUI

struct MakeTransactionView: View {
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
                NavigationLink(destination: BuyView()) {
                    VStack{
                        Text("Buy or Sell").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        Text("Buy or sell crypto with cash").font(.custom("Avenir Light", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }.padding()
                }
                NavigationLink(destination: SendView()) {
                    VStack{
                        Text("Send or Receive").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        Text("Send or receive crypto").font(.custom("Avenir Light", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }.padding()
                }
                NavigationLink(destination: SwapView()) {
                    VStack{
                        Text("Swap").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        Text("Convert one crypto to another").font(.custom("Avenir Light", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }.padding()
                }
                NavigationLink(destination: EarnView()) {
                    VStack{
                        Text("Earn").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        Text("Earn crypto by lending and staking").font(.custom("Avenir Light", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }.padding()
                }
                NavigationLink(destination: BankingView()) {
                    VStack{
                        Text("Bank").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        Text("Transfer balance to or from your bank").font(.custom("Avenir Light", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }.padding()
                }
            }
        }
    }
}

struct MakeTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        MakeTransactionView()
    }
}
