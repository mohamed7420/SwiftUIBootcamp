//
//  AsyncImageBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 16/01/2024.
//

import SwiftUI

struct AsyncImageBootcamp: View {

    let imageURL = URL(string: "https://picsum.photos/200")

    var body: some View {
        ZStack {
            //AsyncImage(url: imageURL)
            AsyncImage(url: imageURL) { phase in
                switch phase {
                case .empty:
                    Image(systemName: "questionmark")
                        .font(.headline)
                case .success(let image):
                    image.resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                case .failure(let error):
                    Text(error.localizedDescription)
                default: Text("Unknown loading image")
                }
            }
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
