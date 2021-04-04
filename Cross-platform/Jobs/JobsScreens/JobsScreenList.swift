//
//  JobScreenList.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct JobsScreenList: View {
    
    @ObservedObject var viewModel: JobsViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.jobList) { job in
                NavigationLink(destination: CurrentJobScreen(job: job)) {
                    JobsScreenJobCell(
                        title: job.title ?? "",
                        description: "Company: \(job.company ?? "")") .onAppear() {
                            if self.viewModel.jobList.isLast(job) {
                                self.viewModel.fetchJobs()
                            }
                    }
                }
            }
            if viewModel.isPageLoading {
                ActivityIndicatorView(style: .medium)
                    .frame(idealWidth: .infinity, maxWidth: .infinity, alignment: .center)
            }
        }
    }
}

struct JobsScreenList_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
