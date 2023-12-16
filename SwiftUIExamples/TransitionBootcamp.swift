//
//  TransitionBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/12/2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State private var showView: Bool = false
    @State private var containerBackgroundColor: Color = .pink
    var body: some View {
        ZStack {
            containerBackgroundColor.ignoresSafeArea()
            VStack {
                Button("Show View") {
                    showView.toggle()
                }
                .padding()
                .bold()
                .foregroundStyle(.white)
                
                Spacer()

                if showView {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .foregroundStyle(.mint)
                        .animation(.spring(response: 0.4, dampingFraction: 2.0, blendDuration: 0.0))
                        .transition(.move(edge: .bottom))
                }
            }
        }.ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
