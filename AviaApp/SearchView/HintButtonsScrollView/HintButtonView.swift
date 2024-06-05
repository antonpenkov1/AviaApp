//
//  HintButtonView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import SwiftUI

struct HintButtonView: View {
    let title: String
    let imageName: String
    let color: Color
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
                .frame(width: 48, height: 48)
                .foregroundStyle(color)
                .overlay {
                    Image(imageName)
                        .foregroundStyle(.offWhite)
            }
            Text(title)
                .multilineTextAlignment(.center)
                .frame(width: 75)
                .font(.system(size: 14))
                .foregroundStyle(.offWhite)
        }
    }
}

#Preview {
    HintButtonView(title: "Сложный маршрут", imageName: "routeIcon", color: .specialGreen)
}
