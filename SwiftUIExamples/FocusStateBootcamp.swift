//
//  FocusStateBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 17/01/2024.
//

import SwiftUI

struct FocusStateBootcamp: View {
    @State var userNameText: String = ""
    @FocusState var userNameInFocus: Bool
    @State var passwordText: String = ""
    @FocusState var passwordInFocus: Bool

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                TextField("Enter your name..", text: $userNameText)
                    .focused($userNameInFocus)
                    .padding([.vertical, .horizontal], 10)
                    .textContentType(.emailAddress)
                    .background(.white)
                    .cornerRadius(10)
                    .padding()

                TextField("Enter your password..", text: $passwordText)
                    .focused($passwordInFocus)
                    .padding([.vertical, .horizontal], 10)
                    .textContentType(.emailAddress)
                    .background(.white)
                    .cornerRadius(10)
                    .padding()

                Button("SIGN UP 🚀") {
                    let isUserNameValid = !userNameText.isEmpty
                    let isPasswordValid = !passwordText.isEmpty

                    if isUserNameValid && isPasswordValid {
                        print("SIGN UP 🚀")
                    } else if isUserNameValid {
                        userNameInFocus = false
                        passwordInFocus = true
                    } else {
                        passwordInFocus = false
                        userNameInFocus = true
                    }
                }
                .foregroundStyle(.white)
                .bold()
            }
        }
    }
}

#Preview {
    FocusStateBootcamp()
}
