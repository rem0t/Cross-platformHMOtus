//
//  CurrentJobScreen.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

struct CurrentJobScreen: View {
    
    private let job: Job
    
    init(job: Job) {
        self.job = job
         UINavigationBar.appearance().largeTitleTextAttributes = [
            .font: UIFont.boldSystemFont(ofSize: 20)
        ]
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text(self.job.company ?? "")
                .font(.title)
                .padding()
            Text(self.job.trimmedDescription ?? "")
                .font(.body)
                .lineLimit(6)
                .padding(.top, 20)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            HStack {
                Spacer()
                NavigationLink(
                    destination: JobDescriptionScreen(description: self.job.trimmedDescription ?? "")
                ) {
                    Text("Show all description")
                }
                .foregroundColor(.blue)
                .font(.footnote)
                .padding()
            }
            HStack {
                Text("Email: \(self.job.url ?? "")")
                    .font(.footnote)
                    .padding(.leading, 20)
                Spacer()
            }
            Spacer()
        }
        .navigationBarTitle(self.job.title ?? "")
    }
}
