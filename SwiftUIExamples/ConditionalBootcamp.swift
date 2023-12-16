//
//  ConditionalBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/12/2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State private var showRect: Bool = false
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Button("Switch View") {
                    showRect.toggle()
                }
                .font(.system(size: 22, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
                ConditionalView(showRect: showRect)
            }
        }
    }
}

struct ConditionalView: View {
    private var showRect: Bool
    init(showRect: Bool) {
        self.showRect = showRect
    }
    var body: some View {
        if showRect {
            Rectangle()
                .frame(width: 100, height: 100)
                .background(.green)
        } else {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
