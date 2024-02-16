//
//  DragGesture.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/02/2024.
//

import SwiftUI

struct DraggableView: View {
    @State private var position: CGSize = .zero

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 100, height: 100, alignment: .center)
            .foregroundColor(.blue)
            .offset(x: position.width, y: position.height)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        withAnimation(.easeIn) {
                            self.position = value.translation
                        }
                    }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            self.position = .zero
                        }
                    }
            )
    }
}

struct DraggableViewPreview: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            DraggableView()
        }
    }
}
