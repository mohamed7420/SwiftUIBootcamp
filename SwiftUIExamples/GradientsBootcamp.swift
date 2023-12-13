//
//  GradientsBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 13/12/2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(
               // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
             //   AngularGradient(colors: [.red, .blue], center: .center, angle: .degrees(45))
                RadialGradient(colors: [.red, .blue], center: .topLeading, startRadius: 10, endRadius: 300)
            )
            .frame(width: 250, height: 120)
    }
}

#Preview {
    GradientsBootcamp()
}
