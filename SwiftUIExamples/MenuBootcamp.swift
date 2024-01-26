//
//  MenuBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 23/01/2024.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            Menu {
                Button("Select 1") {

                }
                
                Button("Select 2") {

                }

            } label: {
                Text("Select From Menu")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
                    .background(
                        .green
                    )
                    .cornerRadius(10)
            }

        }
    }
}

#Preview {
    MenuBootcamp()
}
