//
//  MaskBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 22/02/2024.
//

import SwiftUI

struct MaskBootcamp: View {
    @State private var rating: Int = 0

    var body: some View {
        ZStack {
            starsView.overlay { overlayedView.mask(starsView) }
        }
    }

    private var overlayedView: some View {
        GeometryReader { proxy in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundStyle(.yellow)
                    .frame(width: CGFloat(rating) / 5 * proxy.size.width)
            }
        }
       .allowsHitTesting(false)
    }

    private var starsView: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundStyle(rating >= index ? .yellow : .gray)
                    .onTapGesture {
                        withAnimation(.spring(duration: 0.25)) {
                            rating = index
                        }
                    }
            }
        }
    }
}

#Preview {
    MaskBootcamp()
}
