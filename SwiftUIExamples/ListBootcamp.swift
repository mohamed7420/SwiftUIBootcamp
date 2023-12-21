//
//  ListBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 21/12/2023.
//

import SwiftUI

struct ListBootcamp: View {
    @State private var fields: [String] = [
        "Mobile Development",
        "Web Development",
        "Data Science",
        "Game Development",
        "Software Testing"
    ]
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fields, id: \.self) { field in
                        Text(field)
                            .foregroundStyle(.black)
                            .bold()
                            .font(.system(.title3, design: .rounded))
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                } header: {
                    HeaderView()
                }

            }
            .listStyle(.grouped)
            .navigationTitle("SwiftUI List")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
    }

    var addButton: some View {
        Button("Add") {
            if let randomField = fields.randomElement() {
                fields.append(randomField)
            }
        }
    }

    private func delete(indexSet: IndexSet) {
        fields.remove(atOffsets: indexSet)
    }

    private func move(indices: IndexSet, newOffset: Int) {
        fields.move(fromOffsets: indices, toOffset: newOffset)
    }

}

struct HeaderView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            HStack {
                Text("Software Engineering Fields")
                Image(systemName: "flame.fill")
            }
            .padding()
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ListBootcamp()
}
