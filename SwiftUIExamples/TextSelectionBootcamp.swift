//
//  TextSelectionBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 17/01/2024.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("Hello, SwiftUI")
                .bold()
                .foregroundStyle(.white)
                .textSelection(.enabled)
        }
    }
}

#Preview {
    TextSelectionBootcamp()
}
