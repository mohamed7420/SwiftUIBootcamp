//
//  NavigationStackBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 20/01/2024.
//

import SwiftUI

struct NavigationStackBootcamp: View {

    @State private var fruits: [String] = [
        "Apple", "Orange", "Banana"
    ]

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            NavigationStack {
                ScrollView {
                    LazyVStack(spacing: 30) {
                        ForEach(fruits, id: \.self) { fruit in
                            NavigationLink(value: fruit) {
                                Text(fruit)
                            }
                        }
                    }.padding()
                }
                .navigationTitle("Navigation Stack")
                .navigationDestination(for: String.self) { fruit in
                    Text(fruit)
                }
            }
        }
    }
}

#Preview {
    NavigationStackBootcamp()
}
