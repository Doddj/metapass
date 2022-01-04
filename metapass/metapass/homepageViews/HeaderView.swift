//
//  HeaderView.swift
//  metapass
//
//  Created by Jordan Stone on 12/30/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
//        ZStack{
//            Color(.black)
            HStack{
                Text("Metapass")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 40, height: 20)
                    .padding()
            }
            .padding(.leading).padding(.trailing)
//        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
