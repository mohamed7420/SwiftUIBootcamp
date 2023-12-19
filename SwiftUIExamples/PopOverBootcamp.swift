//
//  PopOverBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 19/12/2023.
//

import SwiftUI

struct PopOverBootcamp: View {
    @State private var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            Button("Show") {
                showNewScreen.toggle()
            }
            .bold()
            .foregroundStyle(.white)

            NewScreen(closeScreen: $showNewScreen)
                .offset(y: showNewScreen ? UIScreen.main.bounds.height * 0.3 : UIScreen.main.bounds.height)
                .transition(.move(edge: .bottom))
                .animation(.spring(.smooth))
        }
    }
}

struct NewScreen: View {
    @Binding var closeScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.black.ignoresSafeArea()
            Button {
                closeScreen.toggle()
            } label: {
                Image(systemName: "xmark.circle")
                    .font(.system(size: 40))
            }
            .padding()
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    PopOverBootcamp()
}
