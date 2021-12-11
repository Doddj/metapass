//
//  HoldingsSubView.swift
//  metapass
//
//  Created by Jordan Stone on 12/9/21.
//

import SwiftUI

struct HoldingsSubView: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(hue: 1.0, saturation: 0.022, brightness: 0.167))
                .frame(height:350)

            .padding()
            VStack {
                Group {
                    HStack{
              //+000.00
                    Text("+000.00").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.leading)

            //$48,331.88
                    Text("$48,331.88").font(.custom("Avenir Medium", size: 38)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(-0.76).multilineTextAlignment(.center)

            //+1.10%
                        ZStack{
                    Text("+0.00%").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.center)
                        
                        //Rectangle 18
                                RoundedRectangle(cornerRadius: 5)
                                .fill(Color(#colorLiteral(red: 0.07036178559064865, green: 0.5083333253860474, blue: 0.06142359972000122, alpha: 0.4000000059604645)))
                                .frame(width: 56, height: 27)
                        }
                    }
                    .padding()
                    ZStack{
                        //Rectangle 22
                              RoundedRectangle(cornerRadius: 10)
                              .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                              .frame(width: 350, height: 56)
                              .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 4, x: 0, y: 4)
                                .padding()
                        HStack{
                            //usd-coin-usdc-logo 2
                                    Image(systemName: "bitcoinsign.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 38.9, height: 40)
                                    .clipped()
                                    .frame(width: 38.9, height: 40)
                            VStack{
                                //USD Coin
                                        Text("USD Coin").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                //USDC
                                        Text("USDC").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            }
                            VStack{
                                //$30,002.02
                                        Text("$30,002.02").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                                //+0.00
                                        Text("+0.00").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                            }
                        }
                        
                    }

                }
                ZStack{
                    //Rectangle 21
                            RoundedRectangle(cornerRadius: 10)
                            .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                                .frame(width: 350, height: 56, alignment: .center)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 4, x: 0, y: 4)
                                .padding()
                    HStack{
                        ZStack{
                            
                            //Ellipse 3
                                    Ellipse()
                                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: 38.9, height: 40)
                            //ethereum-eth-logo 2
                                    Image(systemName:"bitcoinsign.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 23.3, height: 24)
                                    .clipped()
                                    .frame(width: 23.3, height: 24)
                        }

                        VStack{
                            //Ethereum
                                    Text("Ethereum").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            //ETH
                                    Text("ETH").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                        }
                        VStack{
                            //$11,832.71
                                    Text("$11,832.71").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                            //+$366.94
                                    Text("+$366.94").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.07, green: 0.51, blue: 0.06, alpha: 1))).multilineTextAlignment(.trailing)

                        }

                    }
                }

            }

        }
    }
}

struct HoldingsSubView_Previews: PreviewProvider {
    static var previews: some View {
        HoldingsSubView()
    }
}
