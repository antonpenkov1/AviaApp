//
//  CityRowView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import SwiftUI

struct CityRowView: View {
    let city: City
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(city.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                VStack(alignment: .leading) {
                    Text(city.title)
                        .font(.system(size: 16))
                        .bold()
                        .foregroundStyle(.offWhite)
                    Text(city.subtitle)
                        .font(.system(size: 14))
                        .foregroundStyle(.grey6)
                }
            }
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundStyle(.grey6)
        }
        .ignoresSafeArea()
        .padding(.vertical, 10)
        .padding(.horizontal, 16)
        .background(.grey4)
    }
}

#Preview {
    CityRowView(
        city: City(
            title: "Стамбул",
            subtitle: "Популярное направление",
            imageName: "istanbul"
        )
    )
}
