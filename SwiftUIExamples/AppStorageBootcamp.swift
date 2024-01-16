//
//  AppStorageBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 10/01/2024.
//

import SwiftUI

struct AppStorageBootcamp: View {

    @AppStorage("current_user_name") var currentUserName: String = ""

    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            VStack {
                Text(currentUserName)
                        .foregroundStyle(.white)
                        .bold()
                
                Button("SAVE") {
                    currentUserName = "Mohamed Osama"
                }
                .bold()
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
