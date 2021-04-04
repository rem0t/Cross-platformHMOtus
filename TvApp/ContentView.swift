//
//  ContentView.swift
//  TVapp
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rubricSelection = 0
    var rubrics = ["IOS jobs", "Vegetable pecipes", "Fuits recipes"]

    var body: some View {
        NavigationView() {
            VStack() {
                Picker("Options", selection:  self.$rubricSelection) {
                    ForEach(0 ..< self.rubrics.count) { index in
                        Text(self.rubrics[index]).tag(index)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                if self.rubricSelection == 0 {
                    JobsScreen()
                } else if self.rubricSelection == 1 {
                    VegetablesRecipes()
                } else {
                    FruitsRecipes()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
