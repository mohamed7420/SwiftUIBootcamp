//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 14/12/2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, world!")
                .font(.system(size: 30, weight: .bold))
                .padding(.bottom, 10)
            Text("This the description of what we will do on this screen. It is multiple lines and we will align the text to leading edge.")
                .font(.caption)
                .foregroundStyle(.gray)

        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0.0, y: 10.0)
        )
        .padding(.all, 30)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
