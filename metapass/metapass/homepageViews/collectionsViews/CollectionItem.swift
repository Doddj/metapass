//
//  SwiftUIView.swift
//  metapass
//
//  Created by Jordan Stone on 12/26/21.
//

import SwiftUI

struct CollectionItem: View {
    var body: some View {
        VStack{
            Image("crypto_punk")
            ZStack{
                //Rectangle 31
                    RoundedRectangle(cornerRadius: 11)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                    .frame(width: 125, height: 21.7)
                HStack{
                    HStack {
                        ZStack{
                            //Ellipse 3
                                Ellipse()
                                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: 18, height: 17.7)
                            //ethereum-eth-logo 2
                                Image(systemName: "bitcoinsign.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 10.8, height: 10.6)
                                .clipped()
                                .frame(width: 10.8, height: 10.6)
                        }
                    //opensea 1
                        Rectangle()
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 18, height: 17.7)

                    //169
                        Text("169 ").font(.custom("Avenir Heavy", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                    ZStack {
                    //Rectangle 31
                        RoundedRectangle(cornerRadius: 11)
                        .fill(Color(#colorLiteral(red: 0.018660392612218857, green: 0.6625000238418579, blue: 0.005520820617675781, alpha: 1)))
                        .frame(width: 37, height: 21.7)
                        //BUY
                            Text("BUY").font(.custom("Avenir Heavy", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    }
                }

                
            }
        }
        
    }
}

struct CollectionItem_Previews: PreviewProvider {
    static var previews: some View {
        CollectionItem()
    }
}
