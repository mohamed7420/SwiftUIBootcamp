//
//  ToggleBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 25/12/2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State private var toggleIsOn: Bool = false
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                
                Spacer()

                Text("Status: \(toggleIsOn ? "Online" : "Offline")")
                    .font(.system(size: 25, design: .rounded))
                    .foregroundStyle(.red)
                    .bold()
                Toggle(isOn: $toggleIsOn, label: {
                    Text("Change Status")
                        .bold()
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                }).padding([.leading, .trailing], 100)

                Spacer()
            }
        }
    }
}

#Preview {
    ToggleBootcamp()
}
