//
//  JobsViewModel.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import Foundation

class JobsViewModel: ObservableObject {
    
    @Published private(set) var jobList = [Job]()
    
    @Published private(set) var isPageLoading = false
    
    @Published private(set) var page = 0
    
    func fetchJobs() {
        guard !isPageLoading else { return }
        
        isPageLoading = true
        JobsAPI.getJobs(description: "ios", page: page) { list, error in
            self.page += 1
            self.isPageLoading = false
            if let list = list {
                let filteredList = list.filter { !self.jobList.contains($0) }
                self.jobList.append(contentsOf: filteredList)
            }
        }
    }
    
    func getJob(with id: String?) {
        guard let id = id else { return }
        
        JobAPI.getCurrentJob(id: id) { job, error in
            if let job = job {
                print(job)
            }
        }
    }
}
