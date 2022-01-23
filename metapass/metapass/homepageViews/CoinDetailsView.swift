//
//  CoinDetailsView.swift
//  metapass
//
//  Created by Jordan Stone on 1/22/22.
//

import SwiftUI

struct CoinDetailsView: View {
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
                    Text("USD Coin").font(.custom("Avenir Heavy", size: 25)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    Spacer()
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 35, height: 20)
                        .padding()
                    
                }.foregroundColor(.white)
                ScrollView{
                VStack{
                Text("$30,000.00").font(.custom("Avenir Heavy", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    HStack{
                        Text("$1.00").font(.custom("Avenir Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                        Text("0.01%").font(.custom("Avenir Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.center)
                        Text("Today").font(.custom("Avenir Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.center)
                    }
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.16249999403953552, green: 0.16249999403953552, blue: 0.16249999403953552, alpha: 1)))
                    .frame(width: 355, height: 51)
                    HStack(spacing:30){
                        Text("1H").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        Text("1D").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                        Text("1W").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        Text("1M").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        Text("1Y").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        Text("ALL").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                }
                Text("Activity").font(.custom("Avenir Heavy", size: 25)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).frame(maxWidth:.infinity, alignment: .leading).padding(.leading, 20)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.16249999403953552, green: 0.16249999403953552, blue: 0.16249999403953552, alpha: 1)))
                    .frame(width: 355, height: 275)
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                            .frame(width: 345, height: 56)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                            HStack(spacing:100){
                                VStack{
                                    Text("Bought USD Coin").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    Text("Using Apple Pay").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                VStack{
                                    Text("1000 USDC").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                                    Text("+$1000.00").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.trailing)
                                }
                            }
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                            .frame(width: 345, height: 56)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                            HStack(spacing:100){
                                VStack{
                                    Text("Bought USD Coin").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    Text("Using Apple Pay").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                VStack{
                                    Text("1000 USDC").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                                    Text("+$1000.00").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.trailing)
                                }
                            }
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                            .frame(width: 345, height: 56)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                            HStack(spacing:100){
                                VStack{
                                    Text("Bought USD Coin").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    Text("Using Apple Pay").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                VStack{
                                    Text("1000 USDC").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                                    Text("+$1000.00").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.trailing)
                                }
                            }
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                            .frame(width: 345, height: 56)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                            HStack(spacing:100){
                                VStack{
                                    Text("Bought USD Coin").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    Text("Using Apple Pay").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                VStack{
                                    Text("1000 USDC").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                                    Text("+$1000.00").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.trailing)
                                }
                            }
                        }
                    }
                }
                Text("About USD Coin").font(.custom("Avenir Heavy", size: 25)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).frame(maxWidth: .infinity, alignment: .leading)
                Text("USD Coin (known by its ticker USDC) is a stablecoin that is pegged to the U.S. dollar on a 1:1 basis. Every unit of this cryptocurrency in circulation is backed up by $1 that is held in reserve, in a mix of cash and short-term U.S. Treasury bonds. The Centre consortium, which is behind this asset, says USDC is issued by regulated financial institutions.\n\nThe stablecoin originally launched on a limited basis in September 2018. Put simply, USD Coin’s mantra is “digital money for the digital age” — and the stablecoin is designed for a world where cashless transactions are becoming more common.").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }

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

struct CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsView()
    }
}
