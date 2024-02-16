//
//  RotationGesture.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 14/02/2024.
//

import SwiftUI

struct RotationGesture: View {

    @State private var angle = Angle(degrees: 0.0)

    var body: some View {
        Text("Rotation Gesture")
            .foregroundStyle(.white)
            .padding(40)
            .background(Color.blue)
            .cornerRadius(10)
            .rotationEffect(angle)
            .gesture(
                RotateGesture()
                    .onChanged { value in
                        angle = value.rotation
                    }
                    .onEnded { _ in
                        angle = .zero
                    }
            )
    }
}

#Preview {
    RotationGesture()
}
