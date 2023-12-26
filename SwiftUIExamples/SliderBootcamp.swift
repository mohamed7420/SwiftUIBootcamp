//
//  SliderBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 27/12/2023.
//

import SwiftUI

struct SliderBootcamp: View {
    @State private var color: Color = .red
    @State private var initialValue: Double = 1.0
    private let steps = 1.0

    var body: some View {
        ZStack {
            let formattedValue = String(format: "%.1f", initialValue)
            VStack {
                Text("Initial Value: \(formattedValue)")
                    .font(.system(size: 30))
                    .foregroundStyle(color)

                Slider(value: $initialValue,
                       in: 1...120) {
                    Text("Title")
                } minimumValueLabel: {
                    Text("1")
                } maximumValueLabel: {
                    Text("120")
                } onEditingChanged: { _ in
                    color = .white
                }
            }
        }
    }
}

#Preview {
    SliderBootcamp()
}
