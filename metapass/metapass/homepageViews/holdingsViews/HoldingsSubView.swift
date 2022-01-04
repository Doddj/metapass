//
//  HoldingsSubView.swift
//  metapass
//
//  Created by Jordan Stone on 12/9/21.
//

import SwiftUI

struct HoldingsSubView: View {
    var body: some View {
        ScrollView(){
            coins().padding(.top)
            Savings().padding(.top)
        }
    }
}


struct HoldingsSubView_Previews: PreviewProvider {
    static var previews: some View {
        HoldingsSubView()
    }
}
