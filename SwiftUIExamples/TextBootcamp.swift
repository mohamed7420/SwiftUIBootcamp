//
//  TextBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 12/12/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("""
        Hello, iOS Developers ...
        My Name is mohamed osama mohamed and i'm trying to learn swiftui, so if any one can help me learning it.
    """.capitalized)
       // .font(.title)
        //.fontWeight(.bold)
        .underline(true, pattern: .solid, color: .red)
        .multilineTextAlignment(.center)
        .strikethrough(true, pattern: .solid, color: .green)
        .baselineOffset(0)
        .padding()
        .italic()
        .kerning(1)
        .font(.system(size: 10, weight: .heavy, design: .monospaced))
    }
}

#Preview {
    TextBootcamp()
}
