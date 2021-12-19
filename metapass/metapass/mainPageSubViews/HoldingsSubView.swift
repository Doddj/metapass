//
//  HoldingsSubView.swift
//  metapass
//
//  Created by Jordan Stone on 12/9/21.
//

import SwiftUI

struct HoldingsSubView: View {
    var body: some View {
        
        //MAIN ZSTACK
        ZStack{
            
            //Background color
            Rectangle()
                .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                .frame(width: 375, height: 1000)
            
            //MAIN VSTACK
            VStack{
                
            
                //Metapass Logo Text
                Text("Metapass").font(.custom("Avenir Medium", size: 28)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                
                //Selection Bar
                ZStack{
                    //Base
                    RoundedRectangle(cornerRadius: 22.5)
                        .fill(LinearGradient(
                            gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0.3686274588108063, green: 0.09019608050584793, blue: 0.9215686321258545, alpha: 1)), location: 0),
                                .init(color: Color(#colorLiteral(red: 0.10196078568696976, green: 0.7137255072593689, blue: 0.8470588326454163, alpha: 1)), location: 1)]),
                            startPoint: UnitPoint(x: 0.6999999889392746, y: -0.09000000505594842),
                            endPoint: UnitPoint(x: 0.3900000036111433, y: 2.299999917540763)))
                        .frame(width: 363, height: 43)
                    
                    //Choices
                    HStack{
                        //Holdings
                        Text("Holdings").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                        
                        //Activity
                        Text("Activity").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                        
                        //Collection
                        Text("Collection").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    }
                    
                    //Choice Indicator
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color(#colorLiteral(red: 0.16249999403953552, green: 0.16249999403953552, blue: 0.16249999403953552, alpha: 1)))
                        .frame(width: 130, height: 37)
                        .opacity(0.35)
                    
                }
                
                
                
                ZStack(alignment: .topLeading){
                    
                    //Base
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.16249999403953552, green: 0.16249999403953552, blue: 0.16249999403953552, alpha: 1)))
                        .frame(width: 363, height: 318)
                    
                    
                    //Holdings VStack
                    VStack{
                        
                        //
                        //First HStack (Price)
                        //
                        HStack {
                            //Price ($48,331.88)
                            Text("$48,331.88").font(.custom("Avenir Medium", size: 38)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(-0.76).multilineTextAlignment(.center)
                            
                            //Percent Gain ZStack
                            ZStack{
                                //Percent Gain (+1.10%)
                                Text("+0.00%").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.center)
                                
                                //Translucent Green Square
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color(#colorLiteral(red: 0.07036178559064865, green: 0.5083333253860474, blue: 0.06142359972000122, alpha: 0.4000000059604645)))
                                    .frame(width: 56, height: 27)
                            }
                            
                            //Absolute Gain
                            Text("+000.00").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.02, green: 0.66, blue: 0.01, alpha: 1))).multilineTextAlignment(.center)
                        }
                        
                        //
                        //Second Stack (USDC)
                        //
                        
                        HStack {
                            ZStack(alignment: .topLeading){
                                //Base (Try to center this)
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                                    .frame(width: 353, height: 56)
                                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                                
                                HStack{
                                    //Logo Placeholder
                                    Ellipse()
                                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 40, height: 40)
                                    
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
                        
                        
                        //
                        //Third Stack (ETH)
                        //
                        
                        HStack {
                            ZStack(alignment: .topLeading){
                                //Base (Try to center this)
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                                    .frame(width: 353, height: 56)
                                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                                
                                HStack{
                                    //Logo Placeholder
                                    Ellipse()
                                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 40, height: 40)
                                    
                                    //ETH Label Text Stack
                                    VStack{
                                        //Ethereum
                                        Text("Ethereum").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        
                                        //ETH
                                        Text("ETH").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    }
                                    
                                    //Amount Label Text Stack
                                    VStack{
                                        //$11,832.71
                                        Text("$11,832.71").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                                        
                                        //+$366.94
                                        Text("+$366.94").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.07, green: 0.51, blue: 0.06, alpha: 1))).multilineTextAlignment(.trailing)
                                    }
                                }
                            }
                        }
                        
                        //
                        //Fourth Stack (SOL)
                        //
                        
                        HStack {
                            ZStack(alignment: .topLeading){
                                //Base (Try to center this)
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                                    .frame(width: 353, height: 56)
                                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                                
                                HStack{
                                    //Logo Placeholder
                                    Ellipse()
                                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 40, height: 40)
                                    
                                    //SOL Label Text Stack
                                    VStack{
                                        //Solana
                                        Text("Solana").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        
                                        //SOL
                                        Text("SOL").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    }
                                    
                                    //Amount Label Text Stack
                                    VStack{
                                        //$5,403.87
                                        Text("$5,403.87").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                                        
                                        //+$132.68
                                        Text("+$132.68").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.07, green: 0.51, blue: 0.06, alpha: 1))).multilineTextAlignment(.trailing)
                                    }
                                }
                            }
                        }
                        
                        
                        //
                        //Fifth Stack (BTC)
                        //
                        
                        HStack {
                            ZStack(alignment: .topLeading){
                                //Base (Try to center this)
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                                    .frame(width: 353, height: 56)
                                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                                
                                HStack{
                                    //Logo Placeholder
                                    Ellipse()
                                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 40, height: 40)
                                    
                                    //BTC Label Text Stack
                                    VStack{
                                        //Bitcoin
                                        Text("Bitcoin").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        
                                        //BTC
                                        Text("BTC").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    }
                                    
                                    //Amount Label Text Stack
                                    VStack{
                                        //$1,093.28
                                        Text("$1,093.28").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                                        
                                        //+$32.45
                                        Text("+$32.45").font(.custom("Avenir Book", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.07, green: 0.51, blue: 0.06, alpha: 1))).multilineTextAlignment(.trailing)
                                    }
                                }
                            }
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
