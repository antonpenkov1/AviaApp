//
//  FilterButtonView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 05.06.2024.
//

import SwiftUI

struct FilterButtonView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        Capsule()
            .foregroundStyle(.grey4)
            .frame(width: 110, height: 30)
            .overlay {
                HStack(spacing: 5) {
                    Image(systemName: imageName)
                    Image(imageName)
                    Text(title)
                        .italic()
                        .font(.system(size: 14))
                }
                .foregroundStyle(.offWhite)
            }
    }
}

#Preview {
    FilterButtonView(imageName: "filterIcon", title: "обратно")
}
