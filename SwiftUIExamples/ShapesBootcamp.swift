//
//  ShapesBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 12/12/2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        RoundedRectangle(cornerRadius: 20)
            .trim(from: 0.0, to: 1.0)
            .fill(
                LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom)
            )
            .stroke(.green, style: .init(lineWidth: 10, lineCap: .butt, dash: [30]))
            //.rotationEffect(.degrees(180))
            .frame(width: 200, height: 300)

    }
}

#Preview {
    ShapesBootcamp()
}
