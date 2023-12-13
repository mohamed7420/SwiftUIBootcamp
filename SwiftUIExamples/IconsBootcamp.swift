//
//  IconsBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 13/12/2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "xmark")
            .resizable()
            .scaledToFill()
            .font(.largeTitle)
            .foregroundStyle(.red)
            .frame(width: 300, height: 300)
            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
