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
        .padding(10.0)
      .foregroundColor(.white)
        .cornerRadius(20.0)
//        .background(configuration.isPressed ? Color.blue : Color.blue.opacity(0))

  }

}



struct ContentView: View {
    @State var selectedSubView: Int = 0
    @State var holdingBtnSelected: Bool = true
    @State var activityBtnSelected: Bool = false
    @State var collectionBtnSelected: Bool = false

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
                            Button(action:{
                                self.selectedSubView = 0
                                self.collectionBtnSelected = false
                                self.holdingBtnSelected = true
                                self.activityBtnSelected = false
                            })
                            {
                                Text("Holdings").font(.custom("Roboto Medium", size: 20)).foregroundColor(Color(.white)).multilineTextAlignment(.center)

                            }
                            .background(Color(holdingBtnSelected ? .blue : #colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                            .buttonStyle(MyButtonStyle())

                            //Text 2
                            Button(action:{
                                self.selectedSubView = 1
                                self.collectionBtnSelected = false
                                self.holdingBtnSelected = false
                                self.activityBtnSelected = true
                            }){
                                Text("Activity").font(.custom("Roboto Medium", size: 20)).foregroundColor(Color(.white)).multilineTextAlignment(.center)
                            }
                            .background(Color(activityBtnSelected ? .blue : #colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                            .buttonStyle(MyButtonStyle())

                            //Text 3
                            Button(action:{
                                self.selectedSubView = 2
                                self.collectionBtnSelected = true
                                self.holdingBtnSelected = false
                                self.activityBtnSelected = false
                            }){
                                Text("Collection").font(.custom("Roboto Medium", size: 20)).foregroundColor(Color(.white)).multilineTextAlignment(.center)
                            }
                            .background(Color(collectionBtnSelected ? .blue : #colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                            .buttonStyle(MyButtonStyle())

                        }
                    }
                    

                }
                if(selectedSubView==0){
                    HoldingsSubView()
                }
                else if(selectedSubView==1){
                    ActivitiesSubView()
                }
                else if(selectedSubView==2){
                    CollectionSubView()
                }
                else{
                    HoldingsSubView()
                }
                Spacer()
                Rectangle()                            .fill(Color(.black))
                    .frame(width: 363, height: 43, alignment: .leading)
                HStack{
                    ZStack{
                        Rectangle()
                            .fill(Color.clear)
                            .frame(width:363/2, height:43)
                        Image(systemName: "wallet.pass.fill").resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30).padding()
                    }
                    
                    ZStack{
                        Rectangle()
                            .fill(Color.clear)
                            .frame(width:363/2, height:43)
                        Image(systemName: "person.2.fill").resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .padding()
                    }

                }
                .frame(alignment: .leading)
                .padding()
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
