//
//  AnimationTimingBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/12/2023.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State private var isAnimated: Bool = false

    var body: some View {
        let rectAnimatedSize: CGFloat = isAnimated ? 300 : 100
        VStack {
            Button("Animate") {
                isAnimated.toggle()
            }.bold()

            Rectangle()
                .frame(width: rectAnimatedSize,
                       height: rectAnimatedSize)
                .foregroundStyle(.green)
                .cornerRadius(10)
                .animation(.spring(response: 5, dampingFraction: 0.2, blendDuration: 0))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
