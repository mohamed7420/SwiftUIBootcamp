//
//  OnLongPressGesture.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 14/02/2024.
//

import Foundation
import SwiftUI

struct OnLongPressGestureView: View {
    
    @State private var text: String = "Hello, SwiftUI Developers"
    @State private var isTextChanged: Bool = false
    @State private var isCompleted: Bool = false
    @State private var isSuccess: Bool = false

    var body: some View {
        VStack(spacing: 10) {
            Rectangle()
                .fill(isSuccess ? .green : .blue)
                .frame(height: 55)
                .frame(maxWidth: isCompleted ? .infinity : 50)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)

            HStack {
                    Text("CLICK HERE")
                        .foregroundStyle(.white)
                        .padding([.vertical, .horizontal], 12)
                        .background( Color.black )
                        .cornerRadius(10)
                        .onLongPressGesture(minimumDuration: 5.0, maximumDistance: 10.0, perform: {

                        }, onPressingChanged: { isPressed in
                            withAnimation(.easeInOut(duration: 1.5)) {
                                isCompleted = true
                                if isPressed {
                                    isSuccess = true
                                }
                            }
                        })


                Text("RESET")
                    .foregroundStyle(.white)
                    .padding([.vertical, .horizontal], 12)
                    .background( Color.black )
                    .cornerRadius(10)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 1.5)) {
                            isCompleted = false
                            isSuccess = false
                        }
                    }
            }

//            Color.blue.ignoresSafeArea()
//            Text(text)
//                .foregroundStyle(.white)
//                .padding()
//                .background(
//                    isTextChanged ? .green : .red
//                )
//                .cornerRadius(10)
//                .onLongPressGesture {
//                    isTextChanged.toggle()
//                    text = isTextChanged ? "Hello, iOS Developer" : "Hello, SwiftUI Developers"
//                }
        }
    }
}

#Preview {
    OnLongPressGestureView()
}
