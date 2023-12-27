//
//  TabViewBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 27/12/2023.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)

            SettingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Setting")
                }.tag(1)

            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }.tag(2)

        }
        .tint(.yellow)
        .tabViewStyle(.page(indexDisplayMode: .automatic))
        .ignoresSafeArea()
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            VStack {
                Text("HOME VIEW")
                    .font(.title3)
                    .bold()

                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Profile Tab")
                        .foregroundStyle(.white)
                        .padding()
                        .font(.title2)
                        .bold()
                        .background(.black)
                        .cornerRadius(10)
                })
            }
        }
    }
}


struct SettingView: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            VStack {
                Text("SETTING VIEW")
                    .font(.title3)
                    .bold()
            }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            VStack {
                Text("PROFILE VIEW")
                    .font(.title3)
                    .bold()
            }
        }
    }
}

#Preview {
    TabViewBootcamp()
}
