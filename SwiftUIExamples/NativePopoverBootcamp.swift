//
//  NativePopoverBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 26/01/2024.
//

import SwiftUI

struct NativePopoverBootcamp: View {

    @State private var isPresented: Bool = false

    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()

            Button("CLICK") {
                isPresented.toggle()
            }
            .popover(isPresented: $isPresented) {
                Text("Hello SwiftUI Developers")
                    .padding()
                    .presentationCompactAdaptation(.popover)
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
