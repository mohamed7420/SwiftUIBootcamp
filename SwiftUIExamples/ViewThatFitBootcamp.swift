//
//  ViewThatFitBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 26/01/2024.
//

import SwiftUI

struct ViewThatFitBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Rectangle()
                .frame(height: 300)
                .padding()
                .overlay {
                    ViewThatFits {
                        Text("Browse the latest developer documentation, including sample code, articles, tutorials, and API reference.")
                        Text("Explore new documentation and samples from WWDC.")
                    }.foregroundStyle(.white)
                }
        }
    }
}

#Preview {
    ViewThatFitBootcamp()
}
