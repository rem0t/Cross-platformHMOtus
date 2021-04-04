//
//  JobsScreen.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct JobsScreen: View {
    
    @EnvironmentObject var viewModel: JobsViewModel
    
    var body: some View {
        JobsScreenList(viewModel: viewModel)
            .onAppear() {
                self.viewModel.fetchJobs()
        }
    }
}

struct JobsScreen_Previews: PreviewProvider {
    static var previews: some View {
        JobsScreen()
    }
}
