//
//  RecipeScreenRecipeCell.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//
import SwiftUI

struct RecipeScreenRecipeCell: View {
    
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
    }
}
