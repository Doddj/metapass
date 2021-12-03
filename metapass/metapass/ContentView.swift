//
//  ContentView.swift
//  metapass
//
//  Created by Jordan Stone on 12/1/21.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {
    @State private var selected = false
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      .padding()
      .foregroundColor(.white)
        .background(configuration.isPressed ? Color.purple : Color.blue.opacity(0))
      .cornerRadius(8.0)
  }

}

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.black)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                HStack{
                    Text("Metapass")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "line.horizontal.3")
                        .foregroundColor(.white)
                        .frame(width: 50.0, height: 50.0)
                }
                .padding()
                HStack{
                    Image(systemName: "person.crop.circle").resizable()
                        .foregroundColor(.white)
                        .frame(width: 100.0, height: 100.0)
                        .padding()
                    VStack{
                        Text("Jordan.meta")
                            .foregroundColor(.white)
                        HStack{
                            VStack{
                                Text("56").foregroundColor(.white)
                                Text("Friends").foregroundColor(.white)
                            }
                            VStack{
                                Text("12").foregroundColor(.white)
                                Text("Items").foregroundColor(.white)
                            }
                        }
                        Text("web3 is the future!!!").foregroundColor(.white)
                    }
                    .padding()
                }
                
                HStack {
                    ZStack{
                        //Base
                            RoundedRectangle(cornerRadius: 22.5)
                            .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                                .frame(width: 363, height: 43, alignment: .leading)
                        HStack{
                            //Holdings
                            Button(action:{}){
                                Text("Holdings").font(.custom("Roboto Medium", size: 20)).foregroundColor(Color(.white)).multilineTextAlignment(.center)
                            }
                            .buttonStyle(MyButtonStyle())
                            //Text 2
                            Button(action:{}){
                                Text("Activity").font(.custom("Roboto Medium", size: 20)).foregroundColor(Color(.white)).multilineTextAlignment(.center)
                            }
                            .buttonStyle(MyButtonStyle())
                            //Text 3
                            Button(action:{}){
                                Text("Collection").font(.custom("Roboto Medium", size: 20)).foregroundColor(Color(.white)).multilineTextAlignment(.center)
                            }
                            .buttonStyle(MyButtonStyle())
                        }
                    }


                }
                ZStack(alignment: .topLeading){
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(hue: 1.0, saturation: 0.022, brightness: 0.167))
                        .frame(height:350)
                    VStack{
                        Text("$45,000").fontWeight(.medium).foregroundColor(.white).lineLimit(nil)
                    }
                    .padding()
    
                }
                Spacer()
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
