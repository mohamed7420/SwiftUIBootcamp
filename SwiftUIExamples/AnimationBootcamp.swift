//
//  AnimationBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/12/2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State private var isAnimated: Bool = false

    var body: some View {
        ZStack {
            VStack {
                Button("Button") {
                    isAnimated.toggle()
                }
                Rectangle()
                    .frame(width: isAnimated ? 300 : 150, height: isAnimated ? 300 : 150)
                    .foregroundColor(isAnimated ? .blue : .cyan)
                    .cornerRadius(10)
                    .rotationEffect(.degrees(isAnimated ? 360 : 0))
                    .offset(y: isAnimated ? 100 : 0.0)
                    .animation(.interactiveSpring(duration: 5).repeatForever(autoreverses: true))
            }
        }
    }
}

#Preview {
    AnimationBootcamp()
}
