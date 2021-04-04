//
//  JobDescriptionScreen.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct JobDescriptionScreen: View {
    
    let description: String
    
    init(description: String) {
        self.description = description
    }
    
    var body: some View {
        ScrollView {
            Spacer()
            Text(self.description)
                .padding()
            }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarTitle("Full job description")
    }
}

struct JobDescriptionScreen_Previews: PreviewProvider {
    static var previews: some View {
        JobDescriptionScreen(description: "")
    }
}
