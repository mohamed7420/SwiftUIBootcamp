//
//  OnLongPressGesture.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 14/02/2024.
//

import Foundation
import SwiftUI

struct OnLongPressGestureView: View {
    
    @State private var text: String = "Hello, SwiftUI Developers"
    @State private var isTextChanged: Bool = false

    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text(text)
                .foregroundStyle(.white)
                .padding()
                .background(
                    isTextChanged ? .green : .red
                )
                .cornerRadius(10)
                .onLongPressGesture {
                    isTextChanged.toggle()
                    text = isTextChanged ? "Hello, iOS Developer" : "Hello, SwiftUI Developers"
                }
        }
    }
}

#Preview {
    OnLongPressGestureView()
}
