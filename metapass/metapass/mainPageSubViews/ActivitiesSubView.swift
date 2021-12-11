//
//  ActivitiesSubView.swift
//  metapass
//
//  Created by Jordan Stone on 12/9/21.
//

import SwiftUI

struct ActivitiesSubView: View {
    var body: some View {
        VStack{
            ZStack{
                //Rectangle 33
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                    .frame(width: 363, height: 90)
                    .opacity(0.2)
                HStack {
                    //owen 1
                        Image(systemName: "person.crop.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 67.8, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 62.5))
                        .frame(width: 67.8, height: 70)
                    VStack{
                        //Owen.meta staked 25 sol
                            Text("Owen.meta").font(.custom("Avenir Heavy", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) + Text(" staked 25 sol").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        //54 likes 9 comments • 30 mins ago
                            Text("54 likes 9 comments • 30 mins ago").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8))).multilineTextAlignment(.center)
                    }
                    
                }
            }
            ZStack{
                //Rectangle 33
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                    .frame(width: 363, height: 90)
                    .opacity(0.2)
                HStack {
                    //owen 1
                        Image(systemName: "person.crop.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 67.8, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 62.5))
                        .frame(width: 67.8, height: 70)
                    VStack{
                        //Owen.meta staked 25 sol
                            Text("Owen.meta").font(.custom("Avenir Heavy", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) + Text(" staked 25 sol").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        //54 likes 9 comments • 30 mins ago
                            Text("54 likes 9 comments • 30 mins ago").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8))).multilineTextAlignment(.center)
                    }
                    
                }
            }
            ZStack{
                //Rectangle 33
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                    .frame(width: 363, height: 90)
                    .opacity(0.2)
                HStack {
                    //owen 1
                        Image(systemName: "person.crop.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 67.8, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 62.5))
                        .frame(width: 67.8, height: 70)
                    VStack{
                        //Owen.meta staked 25 sol
                            Text("Owen.meta").font(.custom("Avenir Heavy", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) + Text(" staked 25 sol").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        //54 likes 9 comments • 30 mins ago
                            Text("54 likes 9 comments • 30 mins ago").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8))).multilineTextAlignment(.center)
                    }
                    
                }
            }
            ZStack{
                //Rectangle 33
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                    .frame(width: 363, height: 90)
                    .opacity(0.2)
                HStack {
                    //owen 1
                        Image(systemName: "person.crop.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 67.8, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 62.5))
                        .frame(width: 67.8, height: 70)
                    VStack{
                        //Owen.meta staked 25 sol
                            Text("Owen.meta").font(.custom("Avenir Heavy", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) + Text(" staked 25 sol").font(.custom("Avenir Book", size: 17)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        //54 likes 9 comments • 30 mins ago
                            Text("54 likes 9 comments • 30 mins ago").font(.custom("Avenir Book", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8))).multilineTextAlignment(.center)
                    }
                    
                }
            }
            
        }

        
    }
        

}

struct ActivitiesSubView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesSubView()
    }
}
