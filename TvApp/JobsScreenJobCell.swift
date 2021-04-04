//
//  JobsScreenJobCell.swift
//  TVapp
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct JobsScreenJobCell: View {
    
    @State var title: String
    @State var description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .lineLimit(3)
                .multilineTextAlignment(.leading)
                .padding(.top, 20)
            Text(description)
                .font(.callout)
            Spacer(minLength: 20)
        }
        .frame(height: 64)
    }
}
