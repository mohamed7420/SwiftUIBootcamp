//
//  ContextMenuBootCamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 24/12/2023.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 10) {
                Image(systemName: "person.fill")
                    .font(.system(size: 40))
                Text("Mohamed Osama")
                    .bold()
                Text("Senior iOS Developer")
                    .bold()
            }
            .padding(30)
            .background(.white)
            .cornerRadius(30)
            .contextMenu(ContextMenu(menuItems: {
                Text("Menu Item 1")
                Text("Menu Item 2")
                Text("Menu Item 3")
            }))

        }.foregroundStyle(.black)
    }
}

#Preview {
    ContextMenuBootCamp()
}
