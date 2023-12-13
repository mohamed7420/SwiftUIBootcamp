//
//  BackgroundAndOverlaysBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 13/12/2023.
//

import SwiftUI

struct BackgroundAndOverlaysBootcamp: View {
    var body: some View {

        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundStyle(.white)
            .background {
                Circle()
                    .fill(
                        LinearGradient(colors: [.red, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .overlay(alignment: .bottomTrailing) {
                        Circle()
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.red)
                            .overlay {
                                Image(systemName: "plus.app.fill")
                                    .foregroundStyle(.white)
                                    .font(.caption)
                            }
                    }
            }
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .foregroundStyle(.red)
//            .overlay(alignment: .topLeading) {
//                Rectangle()
//                    .frame(width: 50, height: 50, alignment: .center)
//                    .foregroundStyle(.yellow)
//            }
//            .background(
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 150, height: 150)
//            )
    }
}

#Preview {
    BackgroundAndOverlaysBootcamp()
}
