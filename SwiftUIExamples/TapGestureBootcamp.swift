//
//  TapGestureBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 02/01/2024.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State private var isSelected: Bool = false

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 200)
                    .padding()
                    .foregroundStyle(isSelected ? .red : .yellow)
                    .onTapGesture {
                        isSelected.toggle()
                    }

                Text("Rectangle color is: \(isSelected ? "Red" : "Yellow")")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.title2)
            }
        }
    }
}

#Preview {
    TapGestureBootcamp()
}
