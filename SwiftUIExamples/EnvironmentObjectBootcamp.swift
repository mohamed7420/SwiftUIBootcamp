//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 04/01/2024.
//

import SwiftUI

class SoftwareFieldViewModel: ObservableObject {
    @Published var titles: [String] = []

    init() {
        loadAllTitle()
    }

    private func loadAllTitle() {
        let titles = ["Mobile Developer", "Web Developer", "Data Science"]
        self.titles.append(contentsOf: titles)
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel = SoftwareFieldViewModel()
    @State private var showSheet: Bool = false

    var body: some View {
        NavigationStack {
            NavigationView {
                List(viewModel.titles, id: \.self) { title in
                    Text(title)
                        .onTapGesture {
                            showSheet.toggle()
                        }.fullScreenCover(isPresented: $showSheet) {
                            EnvironmentScreen()
                        }
                }
                .listStyle(.insetGrouped)
            }
            .navigationTitle("Environment Objects")

        }.environmentObject(viewModel)
    }
}

struct EnvironmentScreen: View {
    @EnvironmentObject var viewModel: SoftwareFieldViewModel

    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            LazyVStack {
                ForEach(viewModel.titles, id: \.self) { title in
                    Text(title)
                        .foregroundStyle(.white)
                        .font(.title)
                        .bold()
                }
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
}
