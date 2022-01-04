//
//  ActivitiesSubView.swift
//  metapass
//
//  Created by Jordan Stone on 12/9/21.
//

import SwiftUI

struct ActivitiesSubView: View {
    let data = (1...5).map { "Item \($0)" }
    var body: some View {
        ScrollView{
            VStack{
                ForEach(data, id: \.self) { item in
                    ActivityItem()
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
