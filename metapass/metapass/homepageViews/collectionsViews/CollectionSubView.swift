//
//  CollectionSubView.swift
//  metapass
//
//  Created by Jordan Stone on 12/9/21.
//

import SwiftUI



struct CollectionSubView: View {
    let data = (1...10).map { "Item \($0)" }

    let columns = [
        GridItem(.adaptive(minimum: 120))
    ]

    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    CollectionItem()
                }
            }
            .padding(.horizontal)
        }
//        .frame(maxHeight: 300)
    }
}



struct CollectionSubView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionSubView()
    }
}
