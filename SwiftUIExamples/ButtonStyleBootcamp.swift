//
//  ButtonStyleBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 17/01/2024.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            Button("SwiftUI") {

            }
            .foregroundStyle(.white)
            .bold()
            .controlSize(.extraLarge)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .buttonStyle(.bordered)
            .tint(.black)
        }
    }
}

#Preview {
    ButtonStyleBootcamp()
}
