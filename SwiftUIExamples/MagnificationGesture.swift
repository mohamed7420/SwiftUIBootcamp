//
//  MagnificationGesture.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 14/02/2024.
//

import SwiftUI

struct MagnificationGesture: View {
    
    @State private var currentAmount: CGFloat = 1.0
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Rectangle()
                .frame(width: 300, height: 50)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .scaleEffect(currentAmount)
                .overlay(alignment: .center) {
                    Text("Magnificat Me")
                        .foregroundStyle(.red)
                        .bold()
                        .gesture(
                            MagnifyGesture()
                                .onChanged { value in
                                    currentAmount = value.magnification
                                }.onEnded { value in
                                    currentAmount = 1.0
                                }
                        )
                }
        }
    }
}

#Preview {
    MagnificationGesture()
}
