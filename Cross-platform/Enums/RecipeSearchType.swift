//
//  RecipeSearchType.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import Foundation

enum RecipesSearchType {
    
    case vegetables
    case fruits
    
    var searchText: String {
        switch self {
        case .fruits:
            return "apple, orange, banana"
        case .vegetables:
            return "tomato, cucumber, potatoes"
        }
    }
}
