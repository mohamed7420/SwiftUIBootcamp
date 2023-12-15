//
//  StateBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 15/12/2023.
//

import SwiftUI

struct StateBootcamp: View {
    @State private var backgroundColor: Color = .pink
    @State private var count: Int = 1
    @State private var title: String = "Default Title"

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text("Count: \(count)")
                Text("Title: \(title)")
                    .padding()
                    .bold()

                HStack {
                    Button(action: {
                        backgroundColor = .purple
                        title = "First Button Was Pressed"
                        count += 1
                    }, label: {
                        Text("First Button")
                            .font(.title2)
                            .padding()
                    })

                    Button(action: {
                        backgroundColor = .green
                        title = "Second Button Was Pressed"
                        count -= 1
                    }, label: {
                        Text("Second Button")
                            .font(.title2)
                            .padding()
                    })
                }
            }
            .foregroundStyle(.white)
            .bold()
        }
    }
}

#Preview {
    StateBootcamp()
}
