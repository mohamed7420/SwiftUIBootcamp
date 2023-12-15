//
//  ExtraFunctionBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 15/12/2023.
//

import SwiftUI

struct ExtraFunctionBootcamp: View {
    var body: some View {
        ZStack {
            containerBackgroundView
            topButtons
        }
    }

    var containerBackgroundView: some View {
        Color.green.ignoresSafeArea()
    }

    var topButtons: some View {
        Button("Hi press me!") {

        }
    }
}

#Preview {
    ExtraFunctionBootcamp()
}
