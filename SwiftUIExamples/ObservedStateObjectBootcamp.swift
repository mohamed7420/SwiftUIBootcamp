//
//  ObservedStateObjectBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 04/01/2024.
//

import SwiftUI

struct Fruit: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [Fruit] = []
    @Published var isLoading: Bool = false

    init() {
        Task { await loadAllFruits() }
    }

    public func loadAllFruits() async {
        isLoading = true
        try? await Task.sleep(nanoseconds: 2 * 1_000_000_000)

        let apples = Fruit(name: "Apple", count: 5)
        let oranges = Fruit(name: "Oranges", count: 10)
        let bananas = Fruit(name: "Bananas", count: 25)

        let newFruits = [apples, oranges, bananas]
        fruits.append(contentsOf: newFruits)

        isLoading = false
    }

}

struct ObservedStateObjectBootcamp: View {
    //State Object -> Creating
    //Observed Object -> Passing
    
    @StateObject var viewModel = FruitViewModel()

    var body: some View {
        NavigationView {
            NavigationStack {
                if viewModel.isLoading {
                    ProgressView()
                        .tint(.pink)
                } else {
                    List(viewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.pink)
                                .bold()
                                .underline()

                            Text(fruit.name)
                        }
                    }
                }
            }
            .navigationTitle("State Objects")
            .toolbar {
                NavigationLink {
                    AnotherView(viewModel: viewModel)
                } label: {
                    Image(systemName: "arrow.right")
                        .foregroundStyle(.pink)
                        .bold()
                }

            }
//            .onAppear {
//                Task {
//                    await viewModel.loadAllFruits()
//                }
//            }
        }
    }
}

struct AnotherView: View {

    @ObservedObject var viewModel: FruitViewModel

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            LazyVStack {
                ForEach(viewModel.fruits) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.red)
                        .font(.title2)
                        .bold()
                }
            }
        }
    }
}

#Preview {
    ObservedStateObjectBootcamp()
}
