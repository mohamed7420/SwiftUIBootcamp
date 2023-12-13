//
//  ImageBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 13/12/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("beach")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 300)
            .clipShape(
                RoundedRectangle(cornerRadius: 30)
            )
    }
}

#Preview {
    ImageBootcamp()
}
