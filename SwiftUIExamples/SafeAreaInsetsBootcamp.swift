//
//  SafeAreaInsetsBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 20/01/2024.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<10) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 200)
                    }
                }.padding()
            }
            .navigationTitle("Safe Area Insets")
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Button(action: {

                }, label: {
                    Text("Hi")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .bold()
                        .padding()
                        .background(.pink)
                        .clipShape(Circle())
                })
                .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetsBootcamp()
}
