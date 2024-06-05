//
//  TicketOffersView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 05.06.2024.
//

import SwiftUI

struct TicketOffersView: View {
    @StateObject private var viewModel = TicketOffersViewModel()
    
    var body: some View {
        LazyVStack(spacing: 5) {
            ForEach(viewModel.rows, id: \.companyName) { ticketOfferVM in
                TicketRowView(viewModel: ticketOfferVM)
            }
        }
        .padding()
        .padding(.bottom, 10)
        .task {
            await viewModel.fetchOffers()
        }
    }
}

#Preview {
    TicketOffersView()
}
