//
//  ResizableSheetBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 20/01/2024.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State private var showScreen: Bool = false
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()

            Button {
                showScreen.toggle()
            } label: {
                Text("Show Sheet")
                    .padding()
                    .foregroundStyle(.white)
                    .bold()
                    .background(
                        LinearGradient(colors: [.yellow, .blue],
                                       startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(10.0)

            }
            .sheet(isPresented: $showScreen) {
                CustomSecondScreen()
                    .presentationDetents([.medium, .large])
                    .presentationDragIndicator(.hidden)
                    .interactiveDismissDisabled()
            }
        }
    }
}

struct CustomSecondScreen: View {
    var body: some View {
        Text("Second Screen")
    }
}

#Preview {
    ResizableSheetBootcamp()
}
