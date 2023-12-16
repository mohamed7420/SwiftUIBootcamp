//
//  TernaryBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/12/2023.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State private var isTextAppears: Bool = false
    var body: some View {
        VStack {
            Text(isTextAppears ? "Hello, World!" : "Hello, SwiftUI!")
            Button("View Update") {
                isTextAppears.toggle()
            }
        }
    }
}

#Preview {
    TernaryBootcamp()
}
