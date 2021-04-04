//
//  RecipeScreen.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct RecipesScreenList: View {
    
    @ObservedObject var viewModel: RecipesViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.listDataSource) { recipe in
                RecipeScreenRecipeCell(title: recipe.titleTrimmed, description: recipe.ingredients ?? "") .onAppear() {
                    if self.viewModel.listDataSource.isLast(recipe) {
                        self.viewModel.fetchPage()
                    }
                }
            }
                
            if viewModel.isPageLoadings {
                ActivityIndicatorView(style: .medium)
                    .frame(idealWidth: .infinity, maxWidth: .infinity, alignment: .center)
            }
        }
    }
}
