//
//  AlertBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 22/12/2023.
//

import SwiftUI

struct AlertBootcamp: View {
    @State private var showAlert: Bool = false
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Button("Show Alert") {
                showAlert = true
            }
            .foregroundStyle(.white)
            .bold()
            .alert(isPresented: $showAlert, content: {
                createAlert()
            })
        }
    }

    private func createAlert() -> Alert {
        return Alert(title: Text("Here is the title"), message: Text("Here is the message description"), primaryButton: .default(Text("Okay")), secondaryButton: .destructive(Text("Cancel")))
    }
}

#Preview {
    AlertBootcamp()
}
