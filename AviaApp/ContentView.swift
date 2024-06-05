//
//  ContentView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                PlaneTicketsView()
                    .tabItem {
                        Image(.airplaneIcon)
                        Text("Авиабилеты")
                            .foregroundStyle(.white)
                    }
                EmptyView(title: "Отели")
                    .tabItem {
                        Image(.hotelsIcon)
                        Text("Отели")
                    }
                EmptyView(title: "Короче")
                    .tabItem {
                        Image(.locationIcon)
                        Text("Короче")
                    }
                EmptyView(title: "Подписки")
                    .tabItem {
                        Image(.notificationIcon)
                        Text("Подписки")
                    }
                EmptyView(title: "Профиль")
                    .tabItem {
                        Image(.profileIcon)
                        Text("Профиль")
                    }
            }
        }
        .toolbarColorScheme(.dark, for: .tabBar)
        .containerRelativeFrame([.horizontal, .vertical])
        .background(.offBlack)
    }
}

#Preview {
    ContentView()
}
