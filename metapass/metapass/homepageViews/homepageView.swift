//
//  homepageView.swift
//  metapass
//
//  Created by Jordan Stone on 12/28/21.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {
@State private var selected = false
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
        .padding(10.0)
      .foregroundColor(.white)
        .cornerRadius(20.0)
  }
}

struct homepageView: View {
    @State var selectedSubView: Int = 0
    @State var holdingBtnSelected: Bool = true
    @State var activityBtnSelected: Bool = false
    @State var collectionBtnSelected: Bool = false

    var body: some View {
            ZStack{
                Color(.black)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    HeaderView()
                    SocialMediaHeaderView()
                    HStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 22.5)
                                .fill(Color(#colorLiteral(red: 0.2750000059604645, green: 0.2750000059604645, blue: 0.2750000059604645, alpha: 1)))
                                .frame(width: 363, height: 43, alignment: .leading)
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
                                    ZStack{
                                        //Choice Indicator
                                        RoundedRectangle(cornerRadius: 50)
                                            .fill(Color(#colorLiteral(red: 0.16249999403953552, green: 0.16249999403953552, blue: 0.16249999403953552, alpha: 1)))
                                            .frame(width: 120, height: 43)
                                            .opacity(holdingBtnSelected ? 0.35 : 0.0)
                                        Button(action:{
                                            self.selectedSubView = 0
                                            self.collectionBtnSelected = false
                                            self.holdingBtnSelected = true
                                            self.activityBtnSelected = false
                                        })
                                        {
                                            Text("Holdings").font(.custom("Roboto Medium", size: 20)).foregroundColor(Color(.white)).multilineTextAlignment(.center)
                                            
                                        }
                                        .buttonStyle(MyButtonStyle())
                                    }
                                    
                                    //Activity
                                    ZStack{
                                        //Choice Indicator
                                        RoundedRectangle(cornerRadius: 50)
                                            .fill(Color(#colorLiteral(red: 0.16249999403953552, green: 0.16249999403953552, blue: 0.16249999403953552, alpha: 1)))
                                            .frame(width: 120, height: 43)
                                            .opacity(activityBtnSelected ? 0.35 : 0.0)
                                        Button(action:{
                                            self.selectedSubView = 1
                                            self.collectionBtnSelected = false
                                            self.holdingBtnSelected = false
                                            self.activityBtnSelected = true
                                        }){
                                            Text("Activity").font(.custom("Roboto Medium", size: 20)).foregroundColor(Color(.white)).multilineTextAlignment(.center)
                                        }
                                        .buttonStyle(MyButtonStyle())
                                    }
                                    
                                    //Collection
                                    ZStack{
                                        //Choice Indicator
                                        RoundedRectangle(cornerRadius: 50)
                                            .fill(Color(#colorLiteral(red: 0.16249999403953552, green: 0.16249999403953552, blue: 0.16249999403953552, alpha: 1)))
                                            .frame(width: 120, height: 43)
                                            .opacity(collectionBtnSelected ? 0.35 : 0.0)
                                        Button(action:{
                                            self.selectedSubView = 2
                                            self.collectionBtnSelected = true
                                            self.holdingBtnSelected = false
                                            self.activityBtnSelected = false
                                        }){
                                            Text("Collection").font(.custom("Roboto Medium", size: 20)).foregroundColor(Color(.white)).multilineTextAlignment(.center)
                                        }
                                        .buttonStyle(MyButtonStyle())
                                    }
                                    
                                }
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
                    FooterView()
                }
                
            }
            .navigationBarHidden(true)
    }
}

struct homepageView_Previews: PreviewProvider {
    static var previews: some View {
        homepageView()
    }
}
