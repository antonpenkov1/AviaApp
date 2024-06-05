//
//  OfferView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import SwiftUI

struct OfferView: View {
    
    let viewModel: OfferViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("offer\(viewModel.id)")
                .resizable()
                .frame(width: 132, height: 132)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 16, height: 16)))
            Text(viewModel.title)
                .foregroundStyle(.offWhite)
                .font(.system(size: 16, weight: .medium))
            Text(viewModel.town)
                .foregroundStyle(.offWhite)
                .font(.system(size: 14, weight: .regular))
            HStack(alignment: .center) {
                Image(.airplaneIcon)
                    .foregroundStyle(.grey6)
                    .padding(.top, -10)
                    .padding(.trailing, -5)
                Text(viewModel.price)
                    .foregroundStyle(.offWhite)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.top, -10)
            }
        }
    }
}

#Preview {
    OfferView(viewModel: OfferViewModel(offer: Offer.getOffer()))
}
