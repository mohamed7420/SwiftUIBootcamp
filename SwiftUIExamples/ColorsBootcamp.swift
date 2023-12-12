//
//  ColorsBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 13/12/2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    @State private var mode: Bool = false
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(
                    //Color(UIColor.red)
                    //adding custom color
                    Color("customBackgroundColor")
                )
                .frame(width: 300, height: 200)
            Button(action: {
                mode.toggle()
            }, label: {
                Text("Change Mode")
                    .foregroundStyle(.white)
                    .padding()
                    .bold()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                    )
            })
        }.preferredColorScheme(mode ? .light : .dark)
    }
}

struct ColorsBootcampPreview: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}

