//
//  ScrollViewReader.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 19/02/2024.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            ScrollView {
                ScrollViewReader { proxy in
                    Button {
                        withAnimation(.spring(duration: 2.5)) {
                            proxy.scrollTo(15, anchor: .top)
                        }
                    } label: {
                        Text("Press To Scroll")
                            .foregroundStyle(.blue)
                            .font(.title2)
                            .padding()
                            .bold()
                            .background(.white)
                            .cornerRadius(10)
                    }
                    ForEach(0..<50) { index in
                        Text("Hi, \(index)")
                            .font(.headline)
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                            .background(.white)
                            .cornerRadius(20)
                            .padding()
                            .id(index)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewReaderBootcamp()
}
