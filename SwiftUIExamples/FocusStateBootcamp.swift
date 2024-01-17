//
//  FocusStateBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 17/01/2024.
//

import SwiftUI

struct FocusStateBootcamp: View {

    enum SignUpFields: Hashable {
        case userName
        case password
    }

    @State var userNameText: String = ""
    @State var passwordText: String = ""
    @FocusState var typeOfField: SignUpFields?

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                TextField("Enter your name..", text: $userNameText)
                    .focused($typeOfField, equals: .userName)
                    .padding([.vertical, .horizontal], 10)
                    .textContentType(.emailAddress)
                    .background(.white)
                    .cornerRadius(10)
                    .padding()

                SecureField("Enter your password..", text: $passwordText)
                    .focused($typeOfField, equals: .password)
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
                        typeOfField = .password
                    } else {
                        typeOfField = .userName
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
