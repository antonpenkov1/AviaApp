//
//  DateButtonView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 05.06.2024.
//

import SwiftUI

struct DateButtonView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        Capsule()
            .foregroundStyle(.grey4)
            .frame(width: 100, height: 30)
            .overlay {
                HStack(spacing: 1) {
                    Text(title)
                        .foregroundStyle(.offWhite)
                    Text(subtitle)
                        .foregroundStyle(.grey6)
                }
                .italic()
                .font(.system(size: 14))
            }
    }
}

#Preview {
    DateButtonView(title: "24 фев", subtitle: ", сб")
}
