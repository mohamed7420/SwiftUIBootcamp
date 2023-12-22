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
                Alert(title: Text("Alert Title"), message: Text("Alert Message description"), dismissButton: .cancel())
            })
        }
    }
}

#Preview {
    AlertBootcamp()
}
