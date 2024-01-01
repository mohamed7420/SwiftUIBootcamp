//
//  OnAppearBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 27/12/2023.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State private var count: Int = 0
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            NavigationView {
                ScrollView {
                    LazyVStack {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .foregroundStyle(.green)
                                .frame(height: 150)
                                .cornerRadius(20)
                                .padding(10)
                                .onAppear() {
                                    count += 1
                                }
                        }
                    }
                }
                .navigationTitle("OnAppear: \(count)")
            }
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
