//
//  SocialMediaHeaderView.swift
//  metapass
//
//  Created by Jordan Stone on 12/30/21.
//

import SwiftUI

struct SocialMediaHeaderView: View {
    var body: some View {
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
    }
}

struct SocialMediaHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaHeaderView()
    }
}
