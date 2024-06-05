//
//  TitleView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import SwiftUI

struct TitleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundStyle(.offWhite)
            .font(.system(size: 22))
            .bold()
            .multilineTextAlignment(.center)
            .padding()
    }
}

#Preview {
    TitleView(title: "Поиск дешевых авиабилетов")
}
