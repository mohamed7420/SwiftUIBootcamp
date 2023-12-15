//
//  GridsBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 15/12/2023.
//

import SwiftUI

struct GridsBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil)
    ]
    var body: some View {
        LazyVGrid(columns: columns,
                  spacing: 5, pinnedViews: []) {
            Section {
                ForEach(0..<20) { _ in
                    Rectangle()
                        .frame(height: 50)
                        .foregroundStyle(.red)
                }
            } header: {
                Text("Section Header")
                    .bold()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(.red)
            }

        }.padding()
    }
}

#Preview {
    GridsBootcamp()
}
