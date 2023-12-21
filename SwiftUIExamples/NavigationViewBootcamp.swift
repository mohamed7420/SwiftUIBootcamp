//
//  NavigationViewBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 21/12/2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    private let titles: [String] = [
        "iOS Developer",
        "Android Developer",
        "Back-end Developer"
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<10) { index in
                    if let title = titles.randomElement() {
                        let _index = index + 1
                        NavigationLink("\(title): \(_index)", destination: SecondScreen(index: _index))
                            .padding()
                    }
                }
            }
            .navigationTitle("Navigation View")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(leading: Image(systemName: "person.fill").foregroundStyle(.green),
                                trailing: Image(systemName: "gear").foregroundStyle(.red))
        }
    }
}

struct SecondScreen: View {
    private let index: Int
    init(index: Int) {
        self.index = index
    }
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Text("Your title index is: \(index)")
        }.foregroundStyle(.white)
    }
}

#Preview {
     NavigationViewBootcamp()
}
