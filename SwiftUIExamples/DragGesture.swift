//
//  DragGesture.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/02/2024.
//

import SwiftUI

struct DraggableView: View {
    @State private var offsetY: CGFloat = UIScreen.main.bounds.height * 0.88
    @State private var currentDragOffsetY: CGFloat = 0
    @State private var endingOffsetY: CGFloat = 0

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 20) {
                Image(systemName: "chevron.up")
                    .padding(.top, 20)
                Text("Hello, NWC Technical Team!!")
                    .bold()
                Image(systemName: "flame.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(30)
            .offset(y: offsetY)
            .offset(y: currentDragOffsetY)
            .offset(y: endingOffsetY)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        withAnimation(.spring(duration: 0.25)) {
                            currentDragOffsetY = value.translation.height
                        }
                    }
                    .onEnded { value in
                        withAnimation(.spring(duration: 0.25)) {
                            if currentDragOffsetY < -150 {
                                endingOffsetY = -offsetY
                                currentDragOffsetY = endingOffsetY
                            } else if endingOffsetY != 0 && currentDragOffsetY > 150 {
                                currentDragOffsetY = 0
                                endingOffsetY = 0
                            } else {
                                currentDragOffsetY = 0
                            }
                        }
                    }
            )
        }
        .ignoresSafeArea(edges: .bottom)

    }
}



struct DraggableViewPreview: PreviewProvider {
    static var previews: some View {
        DraggableView()
    }
}
