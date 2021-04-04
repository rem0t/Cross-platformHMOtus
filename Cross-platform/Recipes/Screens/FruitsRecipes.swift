//
//  FruitsRecipes.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct FruitsRecipes: View {
    
    @EnvironmentObject var viewModel: FruitsRecipesViewModel
    
    var body: some View {
        VStack {
            RecipesScreenList(viewModel: viewModel)
        } .onAppear() {
            self.viewModel.fetchPage()
        }
    }
}

struct FruitsRecipes_Previews: PreviewProvider {
    static var previews: some View {
        FruitsRecipes()
    }
}
