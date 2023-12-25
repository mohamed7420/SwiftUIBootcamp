//
//  PickerBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 25/12/2023.
//

import SwiftUI

struct PickerBootcamp: View {
    @State private var selection: String = "18"

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            Picker(selection: $selection) {
                ForEach(18..<100) { number in
                    HStack {
                     Text("Age:")
                        Text("\(number)")
                            .tag("\(number)")
                            .foregroundStyle(.red)
                            .bold()
                    }
                }
            } label: {
                
            }
            .background(.gray.opacity(0.3))
            .pickerStyle(.wheel)
        }
    }
}

#Preview {
    PickerBootcamp()
}
