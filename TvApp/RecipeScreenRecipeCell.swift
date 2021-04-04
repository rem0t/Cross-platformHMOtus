//
//  RecipeScreenRecipeCell.swift
//  TVapp
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct RecipeScreenRecipeCell: View {
    
    @State var isFocused = false
    @State var title: String
    @State var description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .lineLimit(3)
                .multilineTextAlignment(.leading)
            Text(description)
                .font(.callout)
            Spacer()
        }
        .frame(height: 64)
        .scaleEffect(isFocused ? 1.2 : 1)
        .focusable(true) { newState in self.isFocused = newState }
        .animation(.easeInOut)
    }
}
