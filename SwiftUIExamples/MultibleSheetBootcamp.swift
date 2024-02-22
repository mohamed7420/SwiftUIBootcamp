//
//  MultipleSheetBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 22/02/2024.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID().uuidString
    let title: String
}

struct MultipleSheetBootcamp: View {
    @State var selectedItem: Item? = nil

    var body: some View {
        VStack(spacing: 20) {
            Button {
                selectedItem = Item(title: "First Selected Item")
            } label: {
                Text("First Button")
            }

            Button {
                selectedItem = Item(title: "Second Selected Item")
            } label: {
                Text("Second Button")
            }
        }
        .sheet(item: $selectedItem) { item in
            NextScreen(selectedItem: item)
        }
    }
}

struct NextScreen: View {
    let selectedItem: Item

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text(selectedItem.title)
        }
    }
}

#Preview {
    MultipleSheetBootcamp()
}
