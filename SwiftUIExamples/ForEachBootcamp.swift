//
//  ForEachBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 15/12/2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    let titles: [String] = ["iOS Developer", "Android Developer", "Back-end Developer"]
    var body: some View {
        VStack {
            ForEach(titles.indices) { index in
                Text(titles[index])
                    .padding(.all, 10)
                    .background(
                        LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                            .cornerRadius(10)
                    )
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
