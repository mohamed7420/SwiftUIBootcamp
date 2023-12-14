//
//  StacksBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 14/12/2023.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.purple)
                .ignoresSafeArea()
            VStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                HStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(.yellow)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
        }
    }
}

#Preview {
    StacksBootcamp()
}
