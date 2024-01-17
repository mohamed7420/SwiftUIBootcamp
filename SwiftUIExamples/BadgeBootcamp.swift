//
//  BadgeBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 17/01/2024.
//

import SwiftUI

struct BadgeBootcamp: View {
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            TabView {
                Text("Home")
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Feed")
                    }

                Text("Favorites")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Favorites")
                    }.badge(5)

                Text("Profile")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
            }
        }
    }
}

#Preview {
    BadgeBootcamp()
}
