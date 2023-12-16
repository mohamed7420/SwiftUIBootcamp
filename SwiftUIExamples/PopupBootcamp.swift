//
//  PopupBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/12/2023.
//

import SwiftUI

struct PopupBootcamp: View {
    @State private var showSheet: Bool = false
    var body: some View {
        VStack {
            Button {
                showSheet = true
            } label: {
                Text("Show Another Screen")
                    .bold()
                    .padding()
                    .foregroundStyle(.black)
            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondViewController()
            }
//            .sheet(isPresented: $showSheet) {
//                SecondViewController()
//            }
        }
    }
}

struct SecondViewController: View {

    @Environment(\.dismiss) var dismiss
    //@Binding var dismissSheet: Bool

    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Button("Dismiss") {
                dismiss.callAsFunction()
            }
            .bold()
            .padding()
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    PopupBootcamp()
}
