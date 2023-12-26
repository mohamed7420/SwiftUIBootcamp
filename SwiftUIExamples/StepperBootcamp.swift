//
//  StepperBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 26/12/2023.
//

import SwiftUI

struct StepperBootcamp: View {
    @State private var defaultValue: Int = 0
    @State private var rectangleWidth: CGFloat = 100

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            GeometryReader { proxy in
                VStack(spacing: 20) {
                    Stepper("Starting Point: \(defaultValue)", value: $defaultValue)
                        .foregroundStyle(.white)
                        .bold()
                        .padding()
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: rectangleWidth, height: 100)
                    Stepper("Change Rectangle Size: \(Int(rectangleWidth))") {
                        incrementRectWidth(amount: 10, proxy: proxy)
                    } onDecrement: {
                        decrementRectWidth(amount: 10)
                    }

                }
            }
        }
    }

    private func incrementRectWidth(amount: CGFloat, proxy: GeometryProxy) {
        withAnimation(.spring) {
            if rectangleWidth < proxy.size.width - 20 {
                rectangleWidth += amount
            }
        }
    }

    private func decrementRectWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            if rectangleWidth > 50 {
                rectangleWidth -= amount
            }
        }
    }
}

#Preview {
    StepperBootcamp()
}
