//
//  ScrollBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 15/12/2023.
//

import SwiftUI

struct ScrollBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<250) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<300) { _ in
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 200, height: 100)
                                    .foregroundStyle(.green)
                            }
                        }.padding()
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollBootcamp()
}
