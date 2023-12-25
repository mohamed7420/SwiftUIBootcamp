//
//  ColorPickerBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 25/12/2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State private var backgroundColor: Color = .green
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            ColorPicker("Select Color".uppercased(),
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .bold()
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(10)
            .padding()
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
