//
//  SubmitKeyboardBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 18/01/2024.
//

import SwiftUI

struct SubmitKeyboardBootcamp: View {

    @State var searchText: String = ""

    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            TextField("Search...", text: $searchText)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .padding()
                .submitLabel(.go)
                .onSubmit {
                    print("Custom submit button")
                }
        }
    }
}

#Preview {
    SubmitKeyboardBootcamp()
}
