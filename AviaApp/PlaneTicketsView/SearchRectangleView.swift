//
//  SearchRectangleView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import SwiftUI

struct SearchRectangleView: View {    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 16, height: 16))
                .foregroundColor(.grey2)
                .frame(height: 132)
                .padding(.horizontal, 24)
            RoundedRectangle(cornerSize: CGSize(width: 16, height: 16))
                .foregroundColor(.grey4)
                .frame(height: 100)
                .padding(.horizontal, 44)
            HStack {
                Image(.searchIcon)
                VStack(alignment: .leading) {
                    Text("Откуда - Москва")
                        .foregroundStyle(.offWhite)
                    Rectangle()
                        .foregroundColor(.grey6.opacity(0.6))
                        .frame(height: 2)
                    Text("Куда - Турция")
                        .foregroundStyle(.offWhite)
                }
            }
            .padding(.horizontal, 60)
        }
    }
}

#Preview {
    SearchRectangleView()
}
