//
//  ToolbarBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 20/01/2024.
//

import SwiftUI

struct ToolbarBootcamp: View {
    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView {

                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "gear")
                    }

                    ToolbarItem(placement: .topBarTrailing) {
                        Image(systemName: "house.fill")
                    }
                }
                //  .toolbar(.hidden, for: .navigationBar, .bottomBar)
                .toolbarTitleMenu {
                    Button("Hello") {

                    }
                }
                .navigationTitle("Toolbar")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
