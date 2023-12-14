//
//  SpacerBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 15/12/2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack {
            ForEach(0..<3) { index in
                Spacer()
                    .frame(height: 5)
                    .background(.black)
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.red)
                    .overlay {
                        Image(systemName: "arrow.down.right.circle.fill")
                            .foregroundStyle(.white)
                    }
                if index == 2 {
                    Spacer()
                        .frame(height: 5)
                        .background(.black)
                }
            }
        }
    }
}

#Preview {
    SpacerBootcamp()
}
