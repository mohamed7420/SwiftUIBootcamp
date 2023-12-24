//
//  TextFieldBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 24/12/2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State private var textFieldText: String = ""
    @State private var items: [String] = []

    var body: some View {
        VStack(spacing: 20) {
            TextField("Type something here...", text: $textFieldText)
                .padding()
                .foregroundStyle(.black)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
            Button {
                saveText(item: textFieldText)
                textFieldText = ""
            } label: {
                Text("SAVE TEXT")
                    .padding()
                    .foregroundStyle(.white)
                    .frame(width: .infinity)
                    .background(.black)
                    .cornerRadius(10)
            }

            ForEach(items.filter { !$0.isEmpty }, id:\.self) { item in
                Text(item)
            }

        }.padding()
    }

    private func saveText(item: String) {
        items.append(item)
    }
}

#Preview {
    TextFieldBootcamp()
}
