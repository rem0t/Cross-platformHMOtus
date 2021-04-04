//
//  VegetablesRecipes.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct VegetablesRecipes: View {
    
    @EnvironmentObject var viewModel: VegetablesRecipesViewModel
    
    var body: some View {
        VStack {
            RecipesScreenList(viewModel: viewModel)
        } .onAppear() {
            self.viewModel.fetchPage()
        }
    }
}

struct VegetablesRecipes_Previews: PreviewProvider {
    static var previews: some View {
        VegetablesRecipes()
    }
}
