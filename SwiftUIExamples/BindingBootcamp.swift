//
//  BindingBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/12/2023.
//

import SwiftUI

struct BindingBootcamp: View {
    @State private var backgroundColor: Color = .pink
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            SubView(bindedBackground: $backgroundColor)
        }
    }
}

struct SubView: View {
    @Binding var bindedBackground: Color
    var body: some View {
        Button("Change Background") {
            bindedBackground = .brown
        }
    }
}

#Preview {
    BindingBootcamp()
}
