//
//  coinItem.swift
//  metapass
//
//  Created by Jordan Stone on 12/28/21.
//

import SwiftUI

struct coinItem: View {
    var body: some View {
        HStack {
            ZStack(alignment: .leading){
                //Base (Try to center this)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                    .frame(width: 360, height: 60)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                HStack(spacing: 50){
                    //Logo Placeholder
                    Ellipse()
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 40, height: 40)
                        .padding()
                    //USDC Label Text Stack
                    VStack{
                        //USD Coin
                        Text("USD Coin").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        //USDC
                        Text("USDC").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                    
                    //Amount Label Text Stack
                    VStack{
                        //$30,002.02
                        Text("$30,002.02").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                        
                        //+0.00
                        Text("+0.00").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct coinItem_Previews: PreviewProvider {
    static var previews: some View {
        coinItem()
    }
}
