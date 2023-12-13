//
//  FrameBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 13/12/2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Mohamed Osama, iOS Developers")
            .background(.red)
            .frame(width: 100, height: 100, alignment: .topTrailing)
            .background(.green)
            .frame(width: 150, height: 150, alignment: .bottom)
            .background(.pink)
            .frame(width: 200, height: 200, alignment: .topLeading)
            .background(.cyan)
    }
}

#Preview {
    FrameBootcamp()
}
