//
//  TextEditorBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 25/12/2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State private var textEditorText: String = "Hello, SwiftUI!"
    @State private var savedText: String = ""

    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                TextEditor(text: $textEditorText)
                    .foregroundStyle(.black)
                    .bold()
                    .lineSpacing(2)
                    .frame(height: 250)
                    .cornerRadius(10)

                Button(action: {
                    savedText = textEditorText
                    textEditorText = ""
                }, label: {
                    Text("SAVE")
                        .padding()
                        .bold()
                        .foregroundStyle(.white)
                        .background(.blue)
                        .cornerRadius(10)

                })

                Text(savedText)

                Spacer()

            }
            .padding()
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
