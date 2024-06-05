//
//  CountryChosenView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import SwiftUI

struct CountryChosenView: View {
    var body: some View {
        VStack(spacing: 0) {
            CountryChosenBoxView()
            FilterScrollView()
            TicketOffersView()
            Spacer()
        }
        .background(.offBlack)
    }
}

#Preview {
    CountryChosenView()
}
