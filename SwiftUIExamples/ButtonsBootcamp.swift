//
//  ButtonsBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 15/12/2023.
//

import SwiftUI

struct ButtonsBootcamp: View {
    var body: some View {
        VStack {
            //First Type Of Buttons
            Button("Press Me!") {

            }

            //Second Type Of Buttons
            Button {

            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 45)
                    .padding(.horizontal, 70)
                    .padding(.vertical, 10)
                    .overlay {
                        Text("Send Message")
                            .bold()
                            .padding()
                            .foregroundStyle(.white)
                    }
            }

            Button {

            } label: {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.purple)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.white)
                    }
            }


        }
    }
}

#Preview {
    ButtonsBootcamp()
}
