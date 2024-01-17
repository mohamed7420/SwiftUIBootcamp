//
//  SwipeActionBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 17/01/2024.
//

import SwiftUI

struct SWipeActionBootcamp: View {
    
    @State var fruites: [String] = [
        "Apple",
        "Banana",
        "Orange"
    ]

    var body: some View {
        List {
            ForEach(fruites, id: \.self) { fruit in
                Text(fruit)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("POST") {

                        }
                    }
            }
        }
    }
}

#Preview {
    SWipeActionBootcamp()
}
