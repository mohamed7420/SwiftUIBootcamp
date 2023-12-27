//
//  DocumentationBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 27/12/2023.
//

import SwiftUI

struct DocumentationBootcamp: View {

    //MARK: - Properties
    @State private var showAlert: Bool = false
    @State private var titles: [String] = [
        "iOS Developer",
        "Android Developer",
        "Back-end Developer"
    ]

    //MARK: body
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(titles, id: \.self) { title in
                    Text(title)
                        .bold()
                }
            }
            .navigationTitle("Documentation")
            .toolbar(content: {
                Button("Alert") {
                    showAlert.toggle()
                }
                .bold()
                .foregroundStyle(.white)
            })
            .alert("Hi this is alert title!", isPresented: $showAlert) {

                HStack {
                    Button {

                    } label: {
                        Text("DONE")
                            .bold()
                    }

                    Button {

                    } label: {
                        Text("OKAY")
                            .bold()
                    }
                }

            } message: {
                Text("This is message from message view builder closure")
            }

        }
    }
}

#Preview {
    DocumentationBootcamp()
}
