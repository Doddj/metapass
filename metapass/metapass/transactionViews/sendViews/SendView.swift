//
//  SendView.swift
//  metapass
//
//  Created by Jordan Stone on 1/4/22.
//

import SwiftUI

struct SendView: View {
    let buttons = [["1","2","3"],["4","5","6"],["7","8","9"]]
    @State var sendViewSelected: Bool = true
    @State var amountEntered: String = "$0"
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack(alignment: .top){
        Rectangle()
            .fill(LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.3686274588108063, green: 0.09019608050584793, blue: 0.9215686321258545, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.10196078568696976, green: 0.7137255072593689, blue: 0.8470588326454163, alpha: 1)), location: 0.5923990607261658)]),
                    startPoint: UnitPoint(x: 0.6999999889392746, y: -0.09000000505594842),
                    endPoint: UnitPoint(x: 0.3900000036111433, y: 2.299999917540763))).edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                HStack{
                    Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                    }){
                    Image(systemName: "arrow.backward").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).frame(alignment:.leading).padding(.leading, 20)
                    }
                    if(sendViewSelected){
                        Text("Send").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    }
                    else{
                            Text("Receive").font(.custom("Avenir Roman", size: 40)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)

                    }

                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .leading
                  )
                Text("Send Crypto To Another Wallet").font(.custom("Avenir Light", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).padding(.bottom).padding(15)
                //$0
                Text(amountEntered).font(.custom("Avenir Heavy", size: 90)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).padding(.bottom)
                HStack{
                    ZStack{
                        //Rectangle 65
                            RoundedRectangle(cornerRadius: 50)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 160, height: 39)
                            .opacity(0.2)
                        HStack {
                            Button(action: {
                                self.sendViewSelected = true
                            }){
                            ZStack{
                                Text("Send").font(.custom("Avenir Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                            RoundedRectangle(cornerRadius: 50)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 63, height: 33)
                                .opacity(sendViewSelected ? 0.2: 0.0)
                            }
                            }
                    
                            Button(action: {
                                self.sendViewSelected = false
                            }){
                            ZStack{
                                Text("Receive").font(.custom("Avenir Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                            RoundedRectangle(cornerRadius: 50)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 80, height: 33)
                                .opacity(sendViewSelected ? 0.0: 0.2)
                            }
                            }
                        }
                    }
                    //currency type
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 87, height: 39)
                        .opacity(0.2)
                        HStack{
                            Text("SOL").font(.custom("Avenir Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                            Image(systemName: "chevron.down").font(.custom("Avenir Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                        }

                    }
                }
                .padding(.bottom)
                //button selector
                VStack(spacing: 30){
                    ForEach(buttons, id: \.self){ row in
                        HStack(spacing: 60){
                            ForEach(row, id: \.self){ button in
                                Button(action: {
                                    if(amountEntered == "$0"){
                                        self.amountEntered="$"+button
                                    }
                                    else{
                                        self.amountEntered+=button
                                    }
                                }){
                                    Text(button).font(.custom("Avenir Medium", size: 35)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).frame(width:40, height:40)
                                }
                            }
                            }
                        }
                    HStack(spacing: 60){
                        Button(action: {
                                self.amountEntered+="."
                        }){
                        Text(".").font(.custom("Avenir Medium", size: 35)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                            .frame(width:40, height:40)
                        }
                        Button(action: {
                            self.amountEntered+="0"
                        }){
                        Text("0").font(.custom("Avenir Medium", size: 35)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                            .frame(width:40, height:40)
                        }
                        Button(action: {
                            if(amountEntered.count<=2){
                                self.amountEntered="$0"
                            }
                            else{
                                self.amountEntered = String(amountEntered.prefix(amountEntered.count-1))
                            }
                        }){
                        Image(systemName: "chevron.left").font(.custom("Avenir Medium", size: 35)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                            .frame(width:40, height:40)
                        }
                    }
                }
                NavigationLink(destination: ReviewPageView()){
                //review button
                ZStack{
                    //Rectangle 66
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 305, height: 66)
                    .opacity(0.3)
                    
                    //REVIEW
                    Text("REVIEW").font(.custom("Avenir Medium", size: 25)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                }
                .padding(.top, 40.0)
                }
            }.padding(.top)
        }.navigationBarHidden(true)
    }
}

struct SendView_Previews: PreviewProvider {
    static var previews: some View {
        SendView()
    }
}
