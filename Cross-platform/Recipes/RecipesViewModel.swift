//
//  RecipesViewModel.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import Foundation

class RecipesViewModel: ObservableObject {
    
    @Published private(set) var listDataSource = [Recipe]()
    
    @Published private(set) var isPageLoadings = false
    @Published private(set) var page = 0
    
    private var type: RecipesSearchType
    
    init(type: RecipesSearchType) {
        self.type = type
    }
    
    func fetchPage() {
        guard isPageLoadings == false else {
            return
        }
        page += 1
        isPageLoadings = true
        
        RecipeAPI.getRecipe(i: type.searchText, p: page) { list, error in
            self.isPageLoadings = false
            if let list = list, let results = list.results {
                let filteredList = results.filter { !self.listDataSource.contains($0) }
                self.listDataSource.append(contentsOf: filteredList)
            } else {
                print(error ?? "no error")
            }
        }
    }
}
