//
//  SafeAreaBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 15/12/2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    @State private var title: String = ""
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            VStack {
                Text("Hello, world!")
                    .foregroundStyle(.white)
                    .bold()
                TextField("Enter your name", text: $title)
                    .foregroundStyle(.gray)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .padding(12)
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                Button("Print Name") {
                    print(title)
                }.foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
